# SODL - Simple Ollama Docker Launcher

This repository contains a simple script and configuration files to run the Ollama server via Docker and provides three methods to interact with the language model.

## Features

- Easy setup and execution of Ollama server using official Docker image
- Simple command-line interface for asking questions
- API support for programmatic interactions

## Prerequisites

- Docker and Docker Compose installed on your system

## Getting Started

### 1. Starting the Server

To start the Ollama server and ask your first question, use the startup script:

```bash
./start.sh "your_question"
```

**Note:** The first run may be slow as the model needs to be downloaded. Subsequent runs will be significantly faster.

### 2.1 Continuing the conversation via script (Super easy)

You can continue asking questions using the same command:

```bash
./start.sh "your_next_question"
```

### 2.2 Continuing the conversation by calling ollama directly (More control)

Similarly, you can continue asking questions by calling ollama directly from docker container:

```bash
docker exec -it ollama ollama run llama3.1:8b-instruct-q8_0 "your_text"
```

### 2.3. Continuing the conversation via the API (Advanced)

Alternatively, you can use the API to interact with the model:

```bash
curl http://localhost:11434/api/generate -d '{"model":"llama3.1:8b-instruct-q8_0", "prompt":"hi!"}'
```

## API Support

For more information on available endpoints and usage, please refer to the [Ollama API documentation](https://github.com/ollama/ollama/blob/main/docs/api.md).

**Note:** OpenAI-compatible API methods are also supported thanks to the Ollama.

## Configuration

The default model used is `llama3.1:8b-instruct-q8_0`. You can modify this in the script if needed.

## Troubleshooting

If you encounter any issues, you are free to open an issue in this repository.

## Contributing

Contributions are welcome! 

Please feel free to submit a PR if you feel like you may somehow add something useful to this small tool.

## License

This project is open-source and available under the [MIT License](LICENSE).
