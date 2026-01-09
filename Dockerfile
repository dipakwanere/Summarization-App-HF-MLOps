# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/codespaces-linux/.devcontainer/base.Dockerfile
FROM python:3.10-slim

WORKDIR /app
ENV PYTHONUNBUFFERED=1

# Install lightweight build deps and utilities
RUN apt-get update \
	&& apt-get install -y --no-install-recommends build-essential git curl \
	&& rm -rf /var/lib/apt/lists/*

# Copy requirements and sanitize any markdown fences before installing
COPY requirements.txt /app/requirements.txt
RUN sed '/^```/d' /app/requirements.txt > /app/req.txt \
	&& pip install --upgrade pip setuptools wheel \
	&& pip install --no-cache-dir -r /app/req.txt \
	&& rm /app/req.txt

# Copy application
COPY . /app

# Expose common ports used by demos
EXPOSE 7860 8000

# Default command runs the Gradio hello app; override as needed
CMD ["python", "helloApp.py"]
	&& rm /app/req.txt
