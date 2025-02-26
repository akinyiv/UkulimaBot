# Ukulima 🌱

Ukulima is an AI-powered chatbot designed to help farmers diagnose crop diseases and receive actionable recommendations. Built with **LLaMA**, **LangChain**, and **Phoenix LiveView**, this project combines the power of local AI models with an intuitive user interface to provide real-time assistance to farmers.

---

## Table of Contents
1. [Features](#features)
2. [Technologies Used](#technologies-used)
3. [Setup Instructions](#setup-instructions)
4. [Usage](#usage)
5. [Project Structure](#project-structure)
6. [Next Steps](#next-steps)
7. [Contributing](#contributing)
8. [License](#license)

---

## Features
- **Local AI Inference**: Run LLaMA models locally for privacy and cost efficiency.
- **Conversational Memory**: Use LangChain to maintain context across conversations.
- **Farmer-Friendly UI**: Built with Phoenix LiveView for a real-time, interactive chatbot interface.
- **Customizable Prompts**: Fine-tune model parameters (temperature, top_p) for better responses.

---

## Technologies Used
- **LLaMA.cpp**: Lightweight inference engine for running LLaMA models locally.
- **LangChain**: Framework for managing prompts, memory, and AI workflows.
- **Phoenix LiveView**: Real-time, server-rendered UI for interactive user experiences.
- **Elixir**: Functional programming language for building scalable backend systems.
- **Python**: Used for AI model integration and LangChain workflows.

---

## Setup Instructions

### Prerequisites
1. **Elixir**: Install Elixir from [elixir-lang.org](https://elixir-lang.org/install.html).
2. **Python**: Install Python from [python.org](https://www.python.org/downloads/).
3. **PostgreSQL**: Install PostgreSQL from [postgresql.org](https://www.postgresql.org/download/).

### Step 1: Clone the Repository
```bash
git clone https://github.com/your-username/ukulima.git
cd ukulima
```

### Step 2: Install Dependencies
1. Install Elixir dependencies:
   ```bash
   mix deps.get
   ```

2. Install Python dependencies:
   ```bash
   pip install llama-cpp-python langchain
   ```

### Step 3: Set Up the Database (Optional)
If you’re using a database, configure it in `apps/ukulima_web/config/dev.exs` and run:
```bash
mix ecto.create
mix ecto.migrate
```

### Step 4: Start the Phoenix Server
```bash
mix phx.server
```

Visit `http://localhost:4000` in your browser to access the chatbot interface.

---

## Usage
1. **Chat Interface**:
   - Visit `http://localhost:4000/chat`.
   - Type or speak your questions about crop diseases.
   - Receive real-time responses from the chatbot.

2. **Voice Input**:
   - Click the microphone button to enable voice input.
   - Speak into your device’s microphone to send messages.

---

## Project Structure
```
ukulima/
├── apps/
│   ├── ukulima_core/             # Core app (LLaMA, LangChain)
│   │   ├── lib/                  # Application code
│   │   ├── priv/                 # Python scripts
│   ├── ukulima_web/              # Phoenix app (UI)
│       ├── assets/               # Frontend assets (CSS, JS)
│       ├── lib/                  # Web-related code (controllers, views, LiveView)
├── config/                       # Umbrella-level configuration
├── mix.exs                       # Umbrella-level mix file
├── README.md                     # Project documentation
```

---

## Next Steps
- Add **real-time updates** using Phoenix PubSub.
- Add **image upload** for crop disease diagnosis.
- Deploy the application to a cloud platform.

---

## Contributing
Contributions are welcome! If you’d like to contribute:
1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m "Add your feature"`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

---

## License
This project is licensed under the MIT License.

---

Made with ❤️ by VELMA. Let’s grow smarter farming solutions together! 🌾