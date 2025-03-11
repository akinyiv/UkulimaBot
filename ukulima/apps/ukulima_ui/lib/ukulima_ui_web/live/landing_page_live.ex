defmodule UkulimaUiWeb.LandingPageLive do
  use UkulimaUiWeb, :live_view

  def render(assigns) do
    ~H"""
    <div class="min-h-screen flex flex-col bg-gray-50">
      <nav class="bg-white shadow-md fixed w-full z-50">
        <div class="max-w-7xl mx-auto px-6 py-4 flex justify-between items-center">
          <div class="flex items-center space-x-3">
            <div>
              <h1 class="text-xl font-bold text-green-700">UkulimaBot</h1>
              <p class="text-sm text-gray-600 font-bold">Smart Farming, Smarter Future</p>
            </div>
          </div>
          <div class="flex space-x-6 items-center">
            <button class="text-gray-700 hover:text-green-600 transition flex items-center">
              <i class="fas fa-info-circle mr-1"></i>
              How It Works
            </button>
            <.link navigate={~p"/users/register"} class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700 transition font-semibold flex items-center">
              <i class="fas fa-hand-point-right mr-2"></i>
              Get Started
            </.link>
          </div>
        </div>
      </nav>

      <section class="relative flex items-center justify-between min-h-screen w-full px-6 bg-cover bg-center" style="background-image: url('/images/farm.jpg');">
        <div class="absolute inset-0 bg-black bg-opacity-50"></div>
        <div class="relative z-10 max-w-7xl mx-auto w-full flex flex-col md:flex-row items-center">
          <div class="text-white md:w-1/2 text-center md:text-left mb-10 md:mb-0">
            <h1 class="text-5xl md:text-6xl font-bold leading-tight mb-4 animate-fade-in">
              Revolutionizing Farming with AI
            </h1>
            <p class="text-xl mb-8 animate-fade-in delay-200">
              Get instant crop disease diagnosis, real-time weather updates, and market insights—all in one platform.
            </p>
            <div class="flex flex-col sm:flex-row space-y-4 sm:space-y-0 sm:space-x-4 justify-center md:justify-start">
              <.link navigate={~p"/users/register"} class="bg-green-600 text-white px-8 py-3 rounded-lg shadow-lg hover:bg-green-700 transform hover:scale-105 transition font-semibold flex items-center">
                <i class="fas fa-leaf mr-2"></i>
                Start Free Trial
              </.link>
              <button class="border-2 border-white text-white px-8 py-3 rounded-lg hover:bg-white hover:text-green-600 shadow-lg transform hover:scale-105 transition font-semibold flex items-center">
                <i class="fas fa-play-circle mr-2 text-yellow-500"></i>
                Watch Demo
              </button>
            </div>
          </div>

          <div class="md:w-1/2 flex justify-center animate-fade-in delay-400">
            <div class="bg-white bg-opacity-90 p-6 rounded-lg shadow-xl max-w-md">
              <div class="flex items-center mb-4">
                <div class="w-10 h-10 rounded-full bg-green-600 flex items-center justify-center text-white text-xl">
                  <i class="fas fa-robot text-white"></i>
                </div>
                <div class="ml-3 font-bold text-gray-800">UkulimaBot</div>
              </div>
              <div class="space-y-3">
                <div class="bg-gray-100 p-3 rounded-lg rounded-tl-none text-gray-700">
                  Hello! I'm UkulimaBot. How can I assist your farm today?
                </div>
                <div class="bg-green-100 p-3 rounded-lg rounded-tr-none text-gray-700 ml-auto">
                  My maize is wilting. What should I do?
                </div>
                <div class="bg-gray-100 p-3 rounded-lg rounded-tl-none text-gray-700">
                  I recommend checking soil moisture and testing for fungal infections. Would you like a step-by-step guide?
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="py-20 bg-white">
        <div class="max-w-7xl mx-auto px-6">
          <h2 class="text-3xl font-bold text-gray-900 mb-3 text-center">AI-Powered Farming Insights</h2>
          <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
            <div class="bg-gray-50 rounded-xl shadow-lg p-6 transition-transform transform hover:scale-105 border-t-4 border-green-600">
              <div class="text-green-600 text-5xl mb-4">
                <i class="fas fa-microscope"></i>
              </div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">Disease Diagnosis</h3>
              <p class="text-gray-600">Upload photos for instant analysis and treatment plans.</p>
            </div>
            <div class="bg-gray-50 rounded-xl shadow-lg p-6 transition-transform transform hover:scale-105 border-t-4 border-yellow-500">
              <div class="text-yellow-500 text-5xl mb-4">
                <i class="fas fa-cloud-sun-rain"></i>
              </div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">Weather Alerts</h3>
              <p class="text-gray-600">Hyper-local forecasts to optimize planting/harvesting.</p>
            </div>
            <div class="bg-gray-50 rounded-xl shadow-lg p-6 transition-transform transform hover:scale-105 border-t-4 border-blue-500">
              <div class="text-blue-500 text-5xl mb-4">
                <i class="fas fa-chart-line"></i>
              </div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">Market Insights</h3>
              <p class="text-gray-600">Real-time pricing to maximize crop sales.</p>
            </div>
          </div>
        </div>
      </section>
      <section class="py-20 bg-gray-100">
        <div class="max-w-7xl mx-auto px-6">
          <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div class="bg-white p-6 rounded-lg shadow-lg">
              <div class="flex items-center mb-4">
                <div class="w-12 h-12 rounded-full bg-green-100 flex items-center justify-center text-green-600">
                  <i class="fas fa-user-farm text-3xl"></i>
                </div>
                <div class="ml-4">
                  <div class="font-semibold text-gray-800">John Mwangi</div>
                  <div class="text-sm text-gray-600">Maize Farmer</div>
                </div>
              </div>
              <p class="text-gray-700 italic">"Diagnosed my crop issues in minutes—saved my harvest!"</p>
            </div>
          </div>
        </div>
      </section>

      <footer class="bg-gray-800 py-10 text-gray-300">
        <div class="max-w-7xl mx-auto px-6">
          <div class="flex flex-col md:flex-row justify-between items-center">
            <p class="text-gray-400 mb-4 md:mb-0">© 2024 UkulimaBot. All rights reserved.</p>
            <div class="flex space-x-4 mt-4 md:mt-0">
              <a href="mailto:support@ukulimabot.com" class="text-gray-400 hover:text-white transition">
                <i class="fas fa-envelope text-2xl"></i>
              </a>
              <a href="tel:+254728825240" class="text-gray-400 hover:text-white transition">
                <i class="fas fa-phone-alt text-2xl"></i>
              </a>
              <a href="#" class="text-gray-400 hover:text-white transition">
                <i class="fab fa-facebook-f text-2xl"></i>
              </a>
              <a href="#" class="text-gray-400 hover:text-white transition">
                <i class="fab fa-whatsapp text-2xl"></i>
              </a>
              <a href="#" class="text-gray-400 hover:text-white transition">
                <i class="fab fa-twitter text-2xl"></i>
              </a>
            </div>
          </div>
        </div>
      </footer>
    </div>
    """
  end
end