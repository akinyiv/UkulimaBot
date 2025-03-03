import requests
import base64
import json  # Import json for parsing

OLLAMA_URL = "http://localhost:11434/api/generate"  # Ollama API

def ask_llava(prompt, image_path=None):
    data = {
        "model": "llava",
        "prompt": prompt
    }

    if image_path:
        with open(image_path, "rb") as img_file:
            image_data = base64.b64encode(img_file.read()).decode("utf-8")
        data["images"] = [image_data]

    try:
        response = requests.post(OLLAMA_URL, json=data, stream=True)  # Use stream=True
        response.raise_for_status()

        full_response = ""  # To store the complete response

        # Process the streaming response
        for line in response.iter_lines():
            if line:
                try:
                    json_line = line.decode('utf-8')  # Decode bytes to string
                    parsed = json.loads(json_line)  # Correct JSON parsing
                    full_response += parsed.get("response", "")  # Extract text
                except Exception as e:
                    print(f"Skipping malformed JSON: {line}, Error: {e}")  # Debugging

        return full_response if full_response else "No response"

    except requests.exceptions.RequestException as e:
        return f"Error: {str(e)}"
    except json.JSONDecodeError:
        return "Invalid JSON response."

# Test
print(ask_llava("How do farmers control pests?"))

# Test with an image (replace with your actual image file)
print(ask_llava("What disease is this crop suffering from?", "download.jpeg"))
