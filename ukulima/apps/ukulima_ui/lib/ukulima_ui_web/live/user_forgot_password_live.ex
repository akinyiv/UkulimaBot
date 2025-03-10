defmodule UkulimaUiWeb.UserForgotPasswordLive do
  use UkulimaUiWeb, :live_view

  alias UkulimaUi.Accounts

  def render(assigns) do
    ~H"""
    <div class="min-h-screen flex items-center justify-center bg-gray-50">
      <div class="bg-white shadow-lg rounded-lg p-8 max-w-md w-full">
        <div class="text-center mb-6">
          <h2 class="text-3xl font-bold text-green-700">Forgot Password?</h2>
          <p class="text-gray-600 mt-2">Enter your email, and we'll send you reset instructions.</p>
        </div>

        <.simple_form for={@form} id="reset_password_form" phx-submit="send_email" class="space-y-4">
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
              Send Reset Instructions
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

  def handle_event("send_email", %{"user" => %{"email" => email}}, socket) do
    if user = Accounts.get_user_by_email(email) do
      Accounts.deliver_user_reset_password_instructions(
        user,
        &url(~p"/users/reset_password/#{&1}")
      )
    end

    info =
      "If your email is in our system, you will receive instructions to reset your password shortly."

    {:noreply,
     socket
     |> put_flash(:info, info)
     |> redirect(to: ~p"/")}
  end
end
