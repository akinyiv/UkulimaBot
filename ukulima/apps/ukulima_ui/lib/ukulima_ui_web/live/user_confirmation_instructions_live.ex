defmodule UkulimaUiWeb.UserConfirmationInstructionsLive do
  use UkulimaUiWeb, :live_view

  alias UkulimaUi.Accounts

  def render(assigns) do
    ~H"""
    <div class="min-h-screen flex items-center justify-center bg-gray-50">
      <div class="bg-white shadow-lg rounded-lg p-8 max-w-md w-full">
        <div class="text-center mb-6">
          <h2 class="text-3xl font-bold text-green-700">Resend Confirmation Email</h2>
          <p class="text-gray-600 mt-2">
            Didn't receive confirmation instructions? Enter your email below.
          </p>
        </div>

        <.simple_form
          for={@form}
          id="resend_confirmation_form"
          phx-submit="send_instructions"
          class="space-y-4"
        >
          <div>
            <label for="email" class="block text-gray-700 font-medium">Email</label>
            <.input
              field={@form[:email]}
              type="email"
              class="w-full border-gray-300 rounded-md shadow-sm focus:ring-green-500 focus:border-green-500"
              placeholder="Enter your email"
              required
            />
          </div>

          <div class="mt-6">
            <.button
              phx-disable-with="Sending..."
              class="w-full bg-green-600 hover:bg-green-700 text-white font-bold py-3 px-4 rounded-lg shadow-lg transition-transform transform hover:scale-105"
            >
              Resend Confirmation Instructions
            </.button>
          </div>
        </.simple_form>

        <p class="text-center text-sm mt-4 text-gray-600">
          <.link href={~p"/users/register"} class="text-green-600 font-semibold hover:underline">
            Register
          </.link>
          |
          <.link href={~p"/users/log_in"} class="text-green-600 font-semibold hover:underline">
            Log in
          </.link>
        </p>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, form: to_form(%{}, as: "user"))}
  end

  def handle_event("send_instructions", %{"user" => %{"email" => email}}, socket) do
    if user = Accounts.get_user_by_email(email) do
      Accounts.deliver_user_confirmation_instructions(
        user,
        &url(~p"/users/confirm/#{&1}")
      )
    end

    info =
      "If your email is in our system and it has not been confirmed yet, you will receive an email with instructions shortly."

    {:noreply,
     socket
     |> put_flash(:info, info)
     |> redirect(to: ~p"/")}
  end
end
