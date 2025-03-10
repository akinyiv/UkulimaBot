defmodule UkulimaUiWeb.UserConfirmationLive do
  use UkulimaUiWeb, :live_view

  alias UkulimaUi.Accounts

  def render(%{live_action: :edit} = assigns) do
    ~H"""
    <div class="min-h-screen flex items-center justify-center bg-gray-50">
      <div class="bg-white shadow-lg rounded-lg p-8 max-w-md w-full">
        <div class="text-center mb-6">
          <h2 class="text-3xl font-bold text-green-700">Confirm Your Account</h2>
          <p class="text-gray-600 mt-2">
            Click the button below to confirm your account and get started.
          </p>
        </div>

        <.simple_form
          for={@form}
          id="confirmation_form"
          phx-submit="confirm_account"
          class="space-y-4"
        >
          <input type="hidden" name={@form[:token].name} value={@form[:token].value} />

          <div class="mt-6">
            <.button
              phx-disable-with="Confirming..."
              class="w-full bg-green-600 hover:bg-green-700 text-white font-bold py-3 px-4 rounded-lg shadow-lg transition-transform transform hover:scale-105"
            >
              Confirm My Account
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

  def mount(%{"token" => token}, _session, socket) do
    form = to_form(%{"token" => token}, as: "user")
    {:ok, assign(socket, form: form), temporary_assigns: [form: nil]}
  end

  # Do not log in the user after confirmation to avoid a
  # leaked token giving the user access to the account.
  def handle_event("confirm_account", %{"user" => %{"token" => token}}, socket) do
    case Accounts.confirm_user(token) do
      {:ok, _} ->
        {:noreply,
         socket
         |> put_flash(:info, "User confirmed successfully.")
         |> redirect(to: ~p"/")}

      :error ->
        # If there is a current user and the account was already confirmed,
        # then odds are that the confirmation link was already visited, either
        # by some automation or by the user themselves, so we redirect without
        # a warning message.
        case socket.assigns do
          %{current_user: %{confirmed_at: confirmed_at}} when not is_nil(confirmed_at) ->
            {:noreply, redirect(socket, to: ~p"/")}

          %{} ->
            {:noreply,
             socket
             |> put_flash(:error, "User confirmation link is invalid or it has expired.")
             |> redirect(to: ~p"/")}
        end
    end
  end
end
