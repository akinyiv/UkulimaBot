from langchain_ollama import OllamaLLM

# Select model
model_name = "mistral"  # Change to "gemma" if needed

llm = OllamaLLM(model=model_name)

# Ask a question
response = llm.invoke("How does crop rotation help in farming?")
print(response)
