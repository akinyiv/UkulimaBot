defmodule UkulimaUiWeb.UserResetPasswordLive do
  use UkulimaUiWeb, :live_view

  alias UkulimaUi.Accounts

  def render(assigns) do
    ~H"""
    <div class="min-h-screen flex items-center justify-center bg-gray-50">
      <div class="bg-white shadow-lg rounded-lg p-8 max-w-md w-full">
        <div class="text-center mb-6">
          <h2 class="text-3xl font-bold text-green-700">Reset Your Password</h2>
          <p class="text-gray-600 mt-2">Enter a new password to secure your account.</p>
        </div>

        <.simple_form
          for={@form}
          id="reset_password_form"
          phx-submit="reset_password"
          phx-change="validate"
          class="space-y-4"
        >
          <.error :if={@form.errors != []} class="text-red-600 text-sm">
            Oops! Something went wrong. Please check the errors below.
          </.error>

          <div>
            <label for="password" class="block text-gray-700 font-medium">New Password</label>
            <.input
              field={@form[:password]}
              type="password"
              class="w-full border-gray-300 rounded-md shadow-sm focus:ring-green-500 focus:border-green-500"
              placeholder="Enter your new password"
              required
            />
          </div>

          <div>
            <label for="password_confirmation" class="block text-gray-700 font-medium">
              Confirm Password
            </label>
            <.input
              field={@form[:password_confirmation]}
              type="password"
              class="w-full border-gray-300 rounded-md shadow-sm focus:ring-green-500 focus:border-green-500"
              placeholder="Confirm your new password"
              required
            />
          </div>

          <div class="mt-6">
            <.button
              phx-disable-with="Resetting..."
              class="w-full bg-green-600 hover:bg-green-700 text-white font-bold py-3 px-4 rounded-lg shadow-lg transition-transform transform hover:scale-105"
            >
              Reset Password
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

  def mount(params, _session, socket) do
    socket = assign_user_and_token(socket, params)

    form_source =
      case socket.assigns do
        %{user: user} ->
          Accounts.change_user_password(user)

        _ ->
          %{}
      end

    {:ok, assign_form(socket, form_source), temporary_assigns: [form: nil]}
  end

  # Do not log in the user after reset password to avoid a
  # leaked token giving the user access to the account.
  def handle_event("reset_password", %{"user" => user_params}, socket) do
    case Accounts.reset_user_password(socket.assigns.user, user_params) do
      {:ok, _} ->
        {:noreply,
         socket
         |> put_flash(:info, "Password reset successfully.")
         |> redirect(to: ~p"/users/log_in")}

      {:error, changeset} ->
        {:noreply, assign_form(socket, Map.put(changeset, :action, :insert))}
    end
  end

  def handle_event("validate", %{"user" => user_params}, socket) do
    changeset = Accounts.change_user_password(socket.assigns.user, user_params)
    {:noreply, assign_form(socket, Map.put(changeset, :action, :validate))}
  end

  defp assign_user_and_token(socket, %{"token" => token}) do
    if user = Accounts.get_user_by_reset_password_token(token) do
      assign(socket, user: user, token: token)
    else
      socket
      |> put_flash(:error, "Reset password link is invalid or it has expired.")
      |> redirect(to: ~p"/")
    end
  end

  defp assign_form(socket, %{} = source) do
    assign(socket, :form, to_form(source, as: "user"))
  end
end
