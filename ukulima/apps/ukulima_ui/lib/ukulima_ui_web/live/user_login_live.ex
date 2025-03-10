defmodule UkulimaUiWeb.UserLoginLive do
  use UkulimaUiWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="min-h-screen flex items-center justify-center bg-gray-50">
      <div class="absolute top-0">
        <.back navigate={~p"/"}>
          Home
        </.back>
      </div>
      <div class="bg-white shadow-lg rounded-lg p-8 max-w-md w-full">
        <div class="text-center mb-6">
          <h2 class="text-3xl font-bold text-green-700">Welcome Back</h2>
          <p class="text-gray-600 mt-2">
            Don't have an account?
            <.link navigate={~p"/users/register"} class="text-green-600 font-semibold hover:underline">
              Sign up
            </.link>
          </p>
        </div>

        <.simple_form
          for={@form}
          id="login_form"
          action={~p"/users/log_in"}
          phx-update="ignore"
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

          <div>
            <label for="password" class="block text-gray-700 font-medium">Password</label>
            <.input
              field={@form[:password]}
              type="password"
              class="w-full border-gray-300 rounded-md shadow-sm focus:ring-green-500 focus:border-green-500"
              placeholder="Enter your password"
              required
            />
          </div>

          <div class="flex justify-between items-center text-sm">
            <.input field={@form[:remember_me]} type="checkbox" label="Keep me logged in" />
            <.link
              href={~p"/users/reset_password"}
              class="text-green-600 font-semibold hover:underline"
            >
              Forgot your password?
            </.link>
          </div>

          <div class="mt-6">
            <.button
              phx-disable-with="Logging in..."
              class="w-full bg-green-600 hover:bg-green-700 text-white font-bold py-3 px-4 rounded-lg shadow-lg transition-transform transform hover:scale-105"
            >
              Log in <span aria-hidden="true">→</span>
            </.button>
          </div>
        </.simple_form>
      </div>
    </div>
    """
  end

  def mount(_params, _session, socket) do
    email = Phoenix.Flash.get(socket.assigns.flash, :email)
    form = to_form(%{"email" => email}, as: "user")
    {:ok, assign(socket, form: form), temporary_assigns: [form: form]}
  end
end
