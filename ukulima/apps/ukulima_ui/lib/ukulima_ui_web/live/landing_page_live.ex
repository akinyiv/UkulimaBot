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
            <.link href="#features" class="text-gray-700 hover:text-green-600 transition">
              About Us
            </.link>
            <.link href="#features" class="text-gray-700 hover:text-green-600 transition">
              Features
            </.link>
            <.link href="#testimonials" class="text-gray-700 hover:text-green-600 transition">
              Testimonials
            </.link>
            <.link href="#contact" class="text-gray-700 hover:text-green-600 transition">
              Contact
            </.link>
            <.link
              navigate={~p"/users/log_in"}
              class="bg-green-600 text-white px-4 py-2 rounded-md hover:bg-green-700 transition"
            >
              Log In
            </.link>
          </div>
        </div>
      </nav>

      <section
        class="relative flex items-center justify-between min-h-screen w-full px-6 bg-cover bg-center"
        style="background-image: url('/images/farm.jpg');"
      >
        <div class="absolute inset-0 bg-black bg-opacity-50"></div>

        <div class="relative z-10 max-w-7xl mx-auto w-full flex flex-col md:flex-row items-center">
          <div class="text-white md:w-1/2 text-center md:text-left mb-10 md:mb-0">
            <h1 class="text-5xl md:text-6xl font-bold leading-tight mb-4 animate-fade-in">
              Revolutionizing Farming with AI
            </h1>
            <p class="text-xl mb-8 animate-fade-in delay-200">
              Get instant crop disease diagnosis, real-time weather updates, market prices, and personalized farming insights—all in one platform.
            </p>
            <div class="flex flex-col sm:flex-row space-y-4 sm:space-y-0 sm:space-x-4 justify-center md:justify-start">
              <.link
                navigate={~p"/users/register"}
                class="bg-green-600 text-white px-8 py-3 rounded-lg shadow-lg hover:bg-green-700 transform hover:scale-105 transition font-semibold"
              >
                Get Started
              </.link>
              <.link
                navigate={~p"/about"}
                class="border-2 border-white text-white px-8 py-3 rounded-lg hover:bg-white hover:text-green-600 shadow-lg transform hover:scale-105 transition font-semibold"
              >
                Learn More
              </.link>
            </div>
          </div>

          <div class="md:w-1/2 flex justify-center animate-fade-in delay-400">
            <div class="bg-white bg-opacity-90 p-6 rounded-lg shadow-xl max-w-md">
              <div class="flex items-center mb-4">
                <div class="w-10 h-10 rounded-full bg-green-600 flex items-center justify-center text-white text-xl">
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    class="h-6 w-6"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9.663 17h4.673M12 3v1m6.364 1.636l-.707.707M21 12h-1M4 12H3m3.343-5.657l-.707-.707m2.828 9.9a5 5 0 117.072 0l-.548.547A3.374 3.374 0 0014 18.469V19a2 2 0 11-4 0v-.531c0-.895-.356-1.754-.988-2.386l-.548-.547z"
                    />
                  </svg>
                </div>
                <div class="ml-3 font-bold text-gray-800">UkulimaBot</div>
              </div>
              <div class="space-y-3">
                <div class="bg-gray-100 p-3 rounded-lg rounded-tl-none text-gray-700">
                  Hello! I'm UkulimaBot, your AI farming assistant. How can I help you today?
                </div>
                <div class="bg-green-100 p-3 rounded-lg rounded-tr-none text-gray-700 ml-auto">
                  My tomato plants have yellow leaves. What could be wrong?
                </div>
                <div class="bg-gray-100 p-3 rounded-lg rounded-tl-none text-gray-700">
                  Based on the symptoms, your tomato plants might be suffering from nitrogen deficiency or overwatering. Could you upload a photo for a more accurate diagnosis?
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section id="features" class="py-20 bg-white">
        <div class="max-w-7xl mx-auto px-6">
          <h2 class="text-3xl font-bold text-gray-900 mb-3 text-center">
            AI-Powered Farming Assistance
          </h2>
          <p class="text-gray-600 text-center max-w-3xl mx-auto mb-12">
            UkulimaBot combines artificial intelligence with agricultural expertise to provide you with real-time insights and solutions.
          </p>

          <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-8">
            <div class="bg-gray-50 rounded-xl shadow-lg p-6 transition-transform transform hover:scale-105 border-t-4 border-green-600">
              <div class="text-green-600 text-5xl mb-4">🌱</div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">Crop Health Monitoring</h3>
              <p class="text-gray-600">
                Upload photos of your crops to diagnose diseases and get treatment recommendations instantly.
              </p>
            </div>

            <div class="bg-gray-50 rounded-xl shadow-lg p-6 transition-transform transform hover:scale-105 border-t-4 border-yellow-500">
              <div class="text-yellow-500 text-5xl mb-4">☀️</div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">Weather Updates</h3>
              <p class="text-gray-600">
                Receive location-specific weather forecasts and alerts to plan your farming activities better.
              </p>
            </div>

            <div class="bg-gray-50 rounded-xl shadow-lg p-6 transition-transform transform hover:scale-105 border-t-4 border-blue-500">
              <div class="text-blue-500 text-5xl mb-4">📈</div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">Market Prices</h3>
              <p class="text-gray-600">
                Access real-time market prices for your crops to make informed selling decisions.
              </p>
            </div>

            <div class="bg-gray-50 rounded-xl shadow-lg p-6 transition-transform transform hover:scale-105 border-t-4 border-brown-600">
              <div class="text-brown-600 text-5xl mb-4">📚</div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">Expert Knowledge</h3>
              <p class="text-gray-600">
                Get personalized farming tips and best practices tailored to your specific crops and location.
              </p>
            </div>
          </div>
        </div>
      </section>

      <section id="services" class="py-20 bg-gray-50">
        <div class="max-w-6xl mx-auto px-6">
          <div class="flex flex-col items-center mb-16">
            <span class="text-green-600 text-sm font-bold uppercase tracking-wider">
              What We Offer
            </span>
            <h2 class="text-4xl font-bold text-gray-900 mt-2 text-center">Our Services</h2>
            <div class="w-16 h-1 bg-green-500 mt-4 rounded-full"></div>
            <p class="text-gray-600 text-center max-w-3xl mt-6">
              UkulimaBot provides a comprehensive suite of AI-powered agricultural services designed to meet the needs of African farmers at every stage of the farming cycle.
            </p>
          </div>

          <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mb-16">
            <div class="bg-white rounded-lg shadow-md overflow-hidden transition-transform hover:-translate-y-1">
              <div class="h-48 bg-green-100 relative">
                <div class="absolute inset-0 flex items-center justify-center">
                  <svg
                    class="w-20 h-20 text-green-600"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
                    />
                  </svg>
                </div>
              </div>
              <div class="p-6">
                <h3 class="text-xl font-semibold text-gray-800 mb-3">Crop Disease Diagnosis</h3>
                <p class="text-gray-600 mb-4">
                  Our AI analyzes photos of your crops to identify diseases, pests, and nutrient deficiencies with 95% accuracy. Get immediate treatment recommendations tailored to your specific conditions.
                </p>
                <ul class="space-y-2 mb-6">
                  <li class="flex items-center">
                    <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fill-rule="evenodd"
                        d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                        clip-rule="evenodd"
                      />
                    </svg>
                    <span class="text-gray-600">Real-time diagnosis</span>
                  </li>
                  <li class="flex items-center">
                    <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fill-rule="evenodd"
                        d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                        clip-rule="evenodd"
                      />
                    </svg>
                    <span class="text-gray-600">Treatment options</span>
                  </li>
                  <li class="flex items-center">
                    <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fill-rule="evenodd"
                        d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                        clip-rule="evenodd"
                      />
                    </svg>
                    <span class="text-gray-600">Preventive measures</span>
                  </li>
                </ul>
                <a
                  href="#"
                  class="text-green-600 font-medium hover:text-green-700 inline-flex items-center"
                >
                  Learn more
                  <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                </a>
              </div>
            </div>

            <div class="bg-white rounded-lg shadow-md overflow-hidden transition-transform hover:-translate-y-1">
              <div class="h-48 bg-green-100 relative">
                <div class="absolute inset-0 flex items-center justify-center">
                  <svg
                    class="w-20 h-20 text-green-600"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M3 15a4 4 0 004 4h9a5 5 0 10-.1-9.999 5.002 5.002 0 10-9.78 2.096A4.001 4.001 0 003 15z"
                    />
                  </svg>
                </div>
              </div>
              <div class="p-6">
                <h3 class="text-xl font-semibold text-gray-800 mb-3">Weather & Climate Insights</h3>
                <p class="text-gray-600 mb-4">
                  Receive localized weather forecasts and climate predictions that help you plan planting, irrigation, and harvesting for optimal results in your specific microclimate.
                </p>
                <ul class="space-y-2 mb-6">
                  <li class="flex items-center">
                    <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fill-rule="evenodd"
                        d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                        clip-rule="evenodd"
                      />
                    </svg>
                    <span class="text-gray-600">7-day forecasts</span>
                  </li>
                  <li class="flex items-center">
                    <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fill-rule="evenodd"
                        d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                        clip-rule="evenodd"
                      />
                    </svg>
                    <span class="text-gray-600">Seasonal predictions</span>
                  </li>
                  <li class="flex items-center">
                    <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fill-rule="evenodd"
                        d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                        clip-rule="evenodd"
                      />
                    </svg>
                    <span class="text-gray-600">Extreme weather alerts</span>
                  </li>
                </ul>
                <a
                  href="#"
                  class="text-green-600 font-medium hover:text-green-700 inline-flex items-center"
                >
                  Learn more
                  <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                </a>
              </div>
            </div>

            <div class="bg-white rounded-lg shadow-md overflow-hidden transition-transform hover:-translate-y-1">
              <div class="h-48 bg-green-100 relative">
                <div class="absolute inset-0 flex items-center justify-center">
                  <svg
                    class="w-20 h-20 text-green-600"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 19v-6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2a2 2 0 002-2zm0 0V9a2 2 0 012-2h2a2 2 0 012 2v10m-6 0a2 2 0 002 2h2a2 2 0 002-2m0 0V5a2 2 0 012-2h2a2 2 0 012 2v14a2 2 0 01-2 2h-2a2 2 0 01-2-2z"
                    />
                  </svg>
                </div>
              </div>
              <div class="p-6">
                <h3 class="text-xl font-semibold text-gray-800 mb-3">Market Intelligence</h3>
                <p class="text-gray-600 mb-4">
                  Access real-time market prices, demand forecasts, and buyer connections to sell your produce at the optimal time and price, maximizing your profit margins.
                </p>
                <ul class="space-y-2 mb-6">
                  <li class="flex items-center">
                    <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fill-rule="evenodd"
                        d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                        clip-rule="evenodd"
                      />
                    </svg>
                    <span class="text-gray-600">Price tracking</span>
                  </li>
                  <li class="flex items-center">
                    <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fill-rule="evenodd"
                        d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                        clip-rule="evenodd"
                      />
                    </svg>
                    <span class="text-gray-600">Buyer connections</span>
                  </li>
                  <li class="flex items-center">
                    <svg class="w-5 h-5 text-green-500 mr-2" fill="currentColor" viewBox="0 0 20 20">
                      <path
                        fill-rule="evenodd"
                        d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z"
                        clip-rule="evenodd"
                      />
                    </svg>
                    <span class="text-gray-600">Trend analysis</span>
                  </li>
                </ul>
                <a
                  href="#"
                  class="text-green-600 font-medium hover:text-green-700 inline-flex items-center"
                >
                  Learn more
                  <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                </a>
              </div>
            </div>
          </div>

          <div class="grid grid-cols-1 md:grid-cols-2 gap-8 mb-16">
            <div class="bg-white rounded-lg shadow-md overflow-hidden flex flex-col md:flex-row">
              <div class="md:w-1/3 bg-green-50 p-6 flex items-center justify-center">
                <svg
                  class="w-16 h-16 text-green-600"
                  fill="none"
                  stroke="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M19.428 15.428a2 2 0 00-1.022-.547l-2.387-.477a6 6 0 00-3.86.517l-.318.158a6 6 0 01-3.86.517L6.05 15.21a2 2 0 00-1.806.547M8 4h8l-1 1v5.172a2 2 0 00.586 1.414l5 5c1.26 1.26.367 3.414-1.415 3.414H4.828c-1.782 0-2.674-2.154-1.414-3.414l5-5A2 2 0 009 10.172V5L8 4z"
                  />
                </svg>
              </div>
              <div class="md:w-2/3 p-6">
                <h3 class="text-xl font-semibold text-gray-800 mb-2">
                  Soil Analysis & Recommendations
                </h3>
                <p class="text-gray-600 mb-4">
                  Submit soil samples or photos for AI analysis to receive customized recommendations for fertilizers, soil amendments, and crop rotation strategies that will optimize your soil health.
                </p>
                <a
                  href="#"
                  class="text-green-600 font-medium hover:text-green-700 inline-flex items-center"
                >
                  Learn more
                  <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                </a>
              </div>
            </div>

            <div class="bg-white rounded-lg shadow-md overflow-hidden flex flex-col md:flex-row">
              <div class="md:w-1/3 bg-green-50 p-6 flex items-center justify-center">
                <svg
                  class="w-16 h-16 text-green-600"
                  fill="none"
                  stroke="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M12 6.253v13m0-13C10.832 5.477 9.246 5 7.5 5S4.168 5.477 3 6.253v13C4.168 18.477 5.754 18 7.5 18s3.332.477 4.5 1.253m0-13C13.168 5.477 14.754 5 16.5 5c1.747 0 3.332.477 4.5 1.253v13C19.832 18.477 18.247 18 16.5 18c-1.746 0-3.332.477-4.5 1.253"
                  />
                </svg>
              </div>
              <div class="md:w-2/3 p-6">
                <h3 class="text-xl font-semibold text-gray-800 mb-2">Agricultural Education</h3>
                <p class="text-gray-600 mb-4">
                  Access a comprehensive library of farming techniques, best practices, and educational resources tailored to your specific crops, region, and farming scale.
                </p>
                <a
                  href="#"
                  class="text-green-600 font-medium hover:text-green-700 inline-flex items-center"
                >
                  Learn more
                  <svg class="w-4 h-4 ml-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M9 5l7 7-7 7"
                    />
                  </svg>
                </a>
              </div>
            </div>
          </div>

          <div class="bg-white rounded-lg shadow-md p-8 mb-16">
            <h3 class="text-2xl font-semibold text-gray-800 mb-6 text-center">How It Works</h3>

            <div class="grid grid-cols-1 md:grid-cols-4 gap-6">
              <div class="text-center">
                <div class="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
                  <span class="text-2xl font-bold text-green-600">1</span>
                </div>
                <h4 class="font-semibold text-gray-800 mb-2">Sign Up</h4>
                <p class="text-gray-600 text-sm">
                  Create your account and tell us about your farm and crops
                </p>
              </div>

              <div class="text-center">
                <div class="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
                  <span class="text-2xl font-bold text-green-600">2</span>
                </div>
                <h4 class="font-semibold text-gray-800 mb-2">Connect</h4>
                <p class="text-gray-600 text-sm">
                  Link UkulimaBot to your mobile device or access via SMS
                </p>
              </div>

              <div class="text-center">
                <div class="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
                  <span class="text-2xl font-bold text-green-600">3</span>
                </div>
                <h4 class="font-semibold text-gray-800 mb-2">Get Insights</h4>
                <p class="text-gray-600 text-sm">Receive personalized recommendations and alerts</p>
              </div>

              <div class="text-center">
                <div class="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
                  <span class="text-2xl font-bold text-green-600">4</span>
                </div>
                <h4 class="font-semibold text-gray-800 mb-2">Improve & Grow</h4>
                <p class="text-gray-600 text-sm">
                  Implement advice and track your farm's improvement
                </p>
              </div>
            </div>
          </div>

          <div class="bg-green-50 rounded-lg p-8">
            <div class="max-w-4xl mx-auto">
              <svg class="w-12 h-12 text-green-300 mb-4" fill="currentColor" viewBox="0 0 24 24">
                <path d="M14.017 21v-7.391c0-5.704 3.731-9.57 8.983-10.609l.995 2.151c-2.432.917-3.995 3.638-3.995 5.849h4v10h-9.983zm-14.017 0v-7.391c0-5.704 3.748-9.57 9-10.609l.996 2.151c-2.433.917-3.996 3.638-3.996 5.849h3.983v10h-9.983z" />
              </svg>

              <p class="text-lg text-gray-700 italic mb-6">
                "UkulimaBot has completely transformed how I farm. The disease detection saved my tomato crop last season, and the market insights helped me sell at the perfect time. My income has increased by 45% since I started using it."
              </p>

              <div class="flex items-center">
                <div class="mr-4">
                  <div class="w-12 h-12 bg-green-200 rounded-full"></div>
                </div>
                <div>
                  <div class="font-semibold text-gray-800">Sarah Mwangi</div>
                  <div class="text-gray-600 text-sm">Smallholder Farmer, Nakuru County</div>
                </div>
              </div>
            </div>
          </div>

          <div class="mt-16 text-center">
            <h3 class="text-2xl font-semibold text-gray-800 mb-4">
              Ready to Transform Your Farming?
            </h3>
            <p class="text-gray-600 max-w-2xl mx-auto mb-8">
              Join thousands of farmers who are increasing yields, reducing costs, and building more sustainable farms with UkulimaBot.
            </p>
            <div class="flex flex-col sm:flex-row gap-4 justify-center">
              <a
                href="#pricing"
                class="bg-green-600 text-white py-3 px-8 rounded-md hover:bg-green-700 transition font-medium"
              >
                View Pricing
              </a>
              <a
                href="#contact"
                class="bg-white text-green-600 border border-green-600 py-3 px-8 rounded-md hover:bg-green-50 transition font-medium"
              >
                Contact Us
              </a>
            </div>
          </div>
        </div>
      </section>
      <section id="about" class="py-20 bg-white">
        <div class="max-w-7xl mx-auto px-6">
          <div class="flex flex-col items-center mb-12">
            <span class="text-green-600 text-sm font-bold uppercase tracking-wider">Our Story</span>
            <h2 class="text-4xl font-bold text-gray-900 mt-2 text-center">About Us</h2>
            <div class="w-16 h-1 bg-green-500 mt-4 rounded-full"></div>
          </div>

          <div class="grid grid-cols-1 md:grid-cols-2 gap-12 items-center mb-16">
            <div class="order-2 md:order-1">
              <h3 class="text-2xl font-semibold text-gray-800 mb-4">Our Mission</h3>
              <div class="prose prose-lg text-gray-700">
                <p>
                  UkulimaBot was born from a vision to revolutionize African agriculture through accessible technology. We empower farmers with AI-driven insights that combine cutting-edge technology with generations of agricultural wisdom.
                </p>
                <p>
                  In a continent where agriculture employs over 60% of the population, we're committed to transforming farming practices, increasing crop yields by up to 40%, and creating sustainable livelihoods for millions.
                </p>
              </div>

              <div class="mt-8 flex space-x-4">
                <div class="flex items-center">
                  <span class="text-green-600 font-bold text-3xl mr-2">2000+</span>
                  <span class="text-gray-600">Farmers Served</span>
                </div>
                <div class="flex items-center">
                  <span class="text-green-600 font-bold text-3xl mr-2">35%</span>
                  <span class="text-gray-600">Yield Increase</span>
                </div>
              </div>
            </div>
          </div>

          <div class="grid grid-cols-1 md:grid-cols-3 gap-8 mb-16">
            <div class="bg-gray-50 p-6 rounded-lg shadow-sm hover:shadow-md transition-shadow">
              <div class="w-12 h-12 bg-green-100 rounded-full flex items-center justify-center mb-4">
                <svg
                  class="w-6 h-6 text-green-600"
                  fill="none"
                  stroke="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z"
                  />
                </svg>
              </div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">AI-Powered Expertise</h3>
              <p class="text-gray-700">
                Our AI has been trained on vast datasets of African agriculture, including local crop varieties, regional weather patterns, and indigenous farming techniques.
              </p>
            </div>

            <div class="bg-gray-50 p-6 rounded-lg shadow-sm hover:shadow-md transition-shadow">
              <div class="w-12 h-12 bg-green-100 rounded-full flex items-center justify-center mb-4">
                <svg
                  class="w-6 h-6 text-green-600"
                  fill="none"
                  stroke="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M3 6l3 1m0 0l-3 9a5.002 5.002 0 006.001 0M6 7l3 9M6 7l6-2m6 2l3-1m-3 1l-3 9a5.002 5.002 0 006.001 0M18 7l3 9m-3-9l-6-2m0-2v2m0 16V5m0 16H9m3 0h3"
                  />
                </svg>
              </div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">Localized Solutions</h3>
              <p class="text-gray-700">
                We combine modern technology with deep understanding of regional farming challenges to provide advice that works for your specific context and conditions.
              </p>
            </div>

            <div class="bg-gray-50 p-6 rounded-lg shadow-sm hover:shadow-md transition-shadow">
              <div class="w-12 h-12 bg-green-100 rounded-full flex items-center justify-center mb-4">
                <svg
                  class="w-6 h-6 text-green-600"
                  fill="none"
                  stroke="currentColor"
                  viewBox="0 0 24 24"
                >
                  <path
                    stroke-linecap="round"
                    stroke-linejoin="round"
                    stroke-width="2"
                    d="M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z"
                  />
                </svg>
              </div>
              <h3 class="text-xl font-semibold text-gray-800 mb-2">Expert Community</h3>
              <p class="text-gray-700">
                Our team brings together agricultural scientists, AI engineers, and farming experts who are passionate about sustainable farming practices.
              </p>
            </div>
          </div>

          <div class="bg-green-50 p-8 rounded-xl">
            <div class="max-w-3xl mx-auto text-center">
              <h3 class="text-2xl font-semibold text-gray-800 mb-4">Our Commitment</h3>
              <p class="text-gray-700 mb-6">
                We are dedicated to making advanced agricultural technology accessible to all farmers, regardless of scale. Whether you're a smallholder farmer with less than an acre or a large commercial operation, UkulimaBot is designed to meet your specific needs and help you thrive.
              </p>
              <a
                href="#services"
                class="inline-block bg-green-600 text-white py-3 px-6 rounded-md hover:bg-green-700 transition font-medium"
              >
                Discover Our Services
              </a>
            </div>
          </div>
        </div>
      </section>
      <section id="contact" class="py-20 bg-gray-100">
        <div class="max-w-5xl mx-auto px-6">
          <h2 class="text-3xl font-bold text-gray-900 mb-12 text-center">Contact Us</h2>

          <div class="bg-white rounded-lg shadow-lg p-8">
            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
              <div>
                <h3 class="text-xl font-semibold text-gray-800 mb-4">Get in Touch</h3>
                <p class="text-gray-600 mb-6">
                  Have questions about UkulimaBot? Our team is here to help. Fill out the form or contact us directly.
                </p>

                <div class="space-y-4">
                  <div class="flex items-start">
                    <svg
                      class="h-6 w-6 text-green-600 mr-3 mt-1"
                      fill="none"
                      stroke="currentColor"
                      viewBox="0 0 24 24"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z"
                      />
                    </svg>
                    <div>
                      <div class="font-semibold text-gray-800">Email</div>
                      <div class="text-gray-600">support@ukulimabot.com</div>
                    </div>
                  </div>

                  <div class="flex items-start">
                    <svg
                      class="h-6 w-6 text-green-600 mr-3 mt-1"
                      fill="none"
                      stroke="currentColor"
                      viewBox="0 0 24 24"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M3 5a2 2 0 012-2h3.28a1 1 0 01.948.684l1.498 4.493a1 1 0 01-.502 1.21l-2.257 1.13a11.042 11.042 0 005.516 5.516l1.13-2.257a1 1 0 011.21-.502l4.493 1.498a1 1 0 01.684.949V19a2 2 0 01-2 2h-1C9.716 21 3 14.284 3 6V5z"
                      />
                    </svg>
                    <div>
                      <div class="font-semibold text-gray-800">Phone</div>
                      <div class="text-gray-600">+254 728 825 240</div>
                    </div>
                  </div>

                  <div class="flex items-start">
                    <svg
                      class="h-6 w-6 text-green-600 mr-3 mt-1"
                      fill="none"
                      stroke="currentColor"
                      viewBox="0 0 24 24"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"
                      />
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"
                      />
                    </svg>
                    <div>
                      <div class="font-semibold text-gray-800">Office</div>
                      <div class="text-gray-600">Nairobi, Kenya</div>
                    </div>
                  </div>
                </div>
              </div>

              <div>
                <form phx-submit="submit_contact">
                  <div class="space-y-4">
                    <div>
                      <label class="block text-sm font-medium text-gray-700 mb-1">Name</label>
                      <input
                        type="text"
                        name="name"
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-green-500 focus:border-green-500"
                        required
                      />
                    </div>

                    <div>
                      <label class="block text-sm font-medium text-gray-700 mb-1">Email</label>
                      <input
                        type="email"
                        name="email"
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-green-500 focus:border-green-500"
                        required
                      />
                    </div>

                    <div>
                      <label class="block text-sm font-medium text-gray-700 mb-1">Message</label>
                      <textarea
                        name="message"
                        rows="4"
                        class="w-full px-4 py-2 border border-gray-300 rounded-md focus:ring-green-500 focus:border-green-500"
                        required
                      ></textarea>
                    </div>

                    <button
                      type="submit"
                      class="w-full bg-green-600 text-white py-2 px-4 rounded-md hover:bg-green-700 transition"
                    >
                      Send Message
                    </button>
                  </div>
                </form>

                <div class="mt-6 text-sm text-gray-500">
                  <p>We'll get back to you within 24 hours during business days.</p>
                </div>
              </div>
            </div>
          </div>

          <div class="mt-12 text-center">
            <h3 class="text-xl font-semibold text-gray-800 mb-4">Connect With Us</h3>
            <div class="flex justify-center space-x-4">
              <a href="#" class="text-gray-600 hover:text-green-600 transition">
                <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M22.675 0h-21.35c-.732 0-1.325.593-1.325 1.325v21.351c0 .731.593 1.324 1.325 1.324h11.495v-9.294h-3.128v-3.622h3.128v-2.671c0-3.1 1.893-4.788 4.659-4.788 1.325 0 2.463.099 2.795.143v3.24l-1.918.001c-1.504 0-1.795.715-1.795 1.763v2.313h3.587l-.467 3.622h-3.12v9.293h6.116c.73 0 1.323-.593 1.323-1.325v-21.35c0-.732-.593-1.325-1.325-1.325z" />
                </svg>
              </a>
              <a href="#" class="text-gray-600 hover:text-green-600 transition">
                <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M23.954 4.569c-.885.389-1.83.654-2.825.775 1.014-.611 1.794-1.574 2.163-2.723-.951.555-2.005.959-3.127 1.184-.896-.959-2.173-1.559-3.591-1.559-2.717 0-4.92 2.203-4.92 4.917 0 .39.045.765.127 1.124-4.09-.193-7.715-2.157-10.141-5.126-.427.722-.666 1.561-.666 2.475 0 1.71.87 3.213 2.188 4.096-.807-.026-1.566-.248-2.228-.616v.061c0 2.385 1.693 4.374 3.946 4.827-.413.111-.849.171-1.296.171-.314 0-.615-.03-.916-.086.631 1.953 2.445 3.377 4.604 3.417-1.68 1.319-3.809 2.105-6.102 2.105-.39 0-.779-.023-1.17-.067 2.189 1.394 4.768 2.209 7.557 2.209 9.054 0 14-7.503 14-14 0-.21-.005-.42-.015-.63.961-.689 1.8-1.56 2.46-2.548l-.047-.02z" />
                </svg>
              </a>
              <a href="#" class="text-gray-600 hover:text-green-600 transition">
                <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M12 2c2.717 0 3.056.01 4.122.06 1.065.05 1.79.217 2.428.465.66.254 1.216.598 1.772 1.153.509.5.902 1.105 1.153 1.772.247.637.415 1.363.465 2.428.047 1.066.06 1.405.06 4.122 0 2.717-.01 3.056-.06 4.122-.05 1.065-.218 1.79-.465 2.428-.254.66-.598 1.216-1.153 1.772-.5.509-1.105.902-1.772 1.153-.637.247-1.363.415-2.428.465-1.066.047-1.405.06-4.122.06-2.717 0-3.056-.01-4.122-.06-1.065-.05-1.79-.218-2.428-.465-.66-.254-1.216-.598-1.772-1.153-.509-.5-.902-1.105-1.153-1.772-.247-.637-.415-1.363-.465-2.428-.047-1.066-.06-1.405-.06-4.122 0-2.717.01-3.056.06-4.122.05-1.065.218-1.79.465-2.428.254-.66.598-1.216 1.153-1.772.5-.509 1.105-.902 1.772-1.153.637-.247 1.363-.415 2.428-.465 1.066-.047 1.405-.06 4.122-.06zm0 1.802c-2.67 0-2.986.01-4.04.059-.976.045-1.505.207-1.858.344-.466.182-.8.398-1.15.748-.35.35-.566.683-.748 1.15-.137.353-.3.882-.344 1.857-.048 1.055-.058 1.37-.058 4.04 0 2.67.01 2.986.058 4.04.045.976.207 1.505.344 1.858.182.466.398.8.748 1.15.35.35.683.566 1.15.748.353.137.882.3 1.857.344 1.054.048 1.37.058 4.04.058 2.67 0 2.986-.01 4.04-.058.976-.045 1.505-.207 1.858-.344.466-.182.8-.398 1.15-.748.35-.35.566-.683.748-1.15.137-.353.3-.882.344-1.857.048-1.055.058-1.37.058-4.04 0-2.67-.01-2.986-.058-4.04-.045-.976-.207-1.505-.344-1.858-.182-.466-.398-.8-.748-1.15-.35-.35-.683-.566-1.15-.748-.353-.137-.882-.3-1.857-.344-1.055-.048-1.37-.058-4.04-.058zm0 3.063a5.135 5.135 0 110 10.27 5.135 5.135 0 010-10.27zm0 8.468a3.333 3.333 0 100-6.666 3.333 3.333 0 000 6.666zm6.538-8.469a1.2 1.2 0 11-2.4 0 1.2 1.2 0 012.4 0z" />
                </svg>
              </a>
              <a href="#" class="text-gray-600 hover:text-green-600 transition">
                <svg class="h-6 w-6" fill="currentColor" viewBox="0 0 24 24">
                  <path d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z" />
                </svg>
              </a>
            </div>
          </div>
        </div>
      </section>
    </div>
    """
  end
end
