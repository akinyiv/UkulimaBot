defmodule UkulimaUiWeb.LandingPageLive do
  use UkulimaUiWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="min-h-screen bg-gray-50 flex flex-col">
      
      <!-- Navigation Bar -->
      <nav class="bg-white shadow-md fixed w-full z-50">
        <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
          <div class="text-2xl font-bold text-green-600">UkulimaBot</div>
          <div class="flex space-x-6">
            <.link navigate={~p"/about"} class="text-gray-700 hover:text-green-600 transition">About</.link>
            <.link navigate={~p"/contact"} class="text-gray-700 hover:text-green-600 transition">Contact</.link>
            <.link navigate={~p"/users/log_in"} class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700 transition">
              Log In
            </.link>
          </div>
        </div>
      </nav>

      <!-- Hero Section (FULL SCREEN HEIGHT) -->
      <section class="relative flex items-center justify-center min-h-screen w-full text-center px-6 bg-cover bg-center" 
               style="background-image: url('/images/farm.jpg');">
        <div class="absolute inset-0 bg-black bg-opacity-40"></div> <!-- Dark overlay for contrast -->
        <div class="relative z-10 max-w-4xl text-white">
          <h1 class="text-6xl font-bold leading-tight mb-4 animate-fade-in">
            Transforming Agriculture with AI
          </h1>
          <p class="text-xl mb-6 animate-fade-in delay-200">
            Get instant crop disease diagnosis, farming insights, and market trends—all in one platform.
          </p>
          <div class="flex space-x-4 justify-center">
            <.link navigate={~p"/users/register"} class="bg-green-600 text-white px-6 py-3 rounded-lg shadow-lg hover:bg-green-700 transform hover:scale-105 transition">
              Get Started
            </.link>
            <.link navigate={~p"/about"} class="border border-white text-white px-6 py-3 rounded-lg hover:bg-white hover:text-green-600 shadow-lg transform hover:scale-105 transition">
              Learn More
            </.link>
          </div>
        </div>
      </section>

      <!-- Features Section -->
      <section class="py-20 bg-gray-100">
        <div class="max-w-7xl mx-auto px-6 text-center">
          <h2 class="text-3xl font-bold text-gray-900 mb-10">Key Features</h2>
          <div class="grid grid-cols-1 sm:grid-cols-3 gap-8">
            
            <div class="bg-white p-6 rounded-lg shadow-lg text-center transition-transform transform hover:scale-105">
              <div class="text-green-600 text-5xl mb-3">🌱</div>
              <h3 class="text-xl font-semibold text-gray-800">Crop Disease Diagnosis</h3>
              <p class="text-gray-600 text-sm">Upload photos of your crops to diagnose diseases instantly.</p>
            </div>

            <div class="bg-white p-6 rounded-lg shadow-lg text-center transition-transform transform hover:scale-105">
              <div class="text-green-600 text-5xl mb-3">📚</div>
              <h3 class="text-xl font-semibold text-gray-800">Farming Tips</h3>
              <p class="text-gray-600 text-sm">Get expert advice tailored to your location and crop type.</p>
            </div>

            <div class="bg-white p-6 rounded-lg shadow-lg text-center transition-transform transform hover:scale-105">
              <div class="text-green-600 text-5xl mb-3">📈</div>
              <h3 class="text-xl font-semibold text-gray-800">Market Insights</h3>
              <p class="text-gray-600 text-sm">Access real-time weather forecasts and market prices.</p>
            </div>

          </div>
        </div>
      </section>

      <!-- Footer -->
      <footer class="bg-white py-6 shadow-md text-center text-gray-700">
        <div class="max-w-7xl mx-auto px-6">
          <p>© 2025 UkulimaBot. All rights reserved.</p>
          <div class="flex justify-center space-x-6 mt-4">
            <.link navigate={~p"/privacy"} class="hover:text-green-600 transition">Privacy Policy</.link>
            <.link navigate={~p"/terms"} class="hover:text-green-600 transition">Terms of Service</.link>
          </div>
        </div>
      </footer>

    </div>
    """
  end
end
