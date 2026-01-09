# Summarization-App-HF-MLOps

Lightweight example apps demonstrating Hugging Face + simple web UIs and utilities for summarization tasks.

Features
- Gradio-based demo (`helloApp.py`) — quick UI examples
- Summarization demo (`summarizeApp.py` + `text.txt`)
- Model loading example (`load_model.py`) and save/load helpers
- Small utility library in `mylib/` (calculator)

Quickstart (local)

1. Create a virtual environment and install dependencies:

```bash
python -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

2. Run the Gradio demo (opens a local web UI):

# Summarization-App-HF-MLOps

Lightweight example apps demonstrating Hugging Face + simple web UIs and utilities for summarization tasks.

Features
- Gradio-based demo (`helloApp.py`) — quick UI examples
- Summarization demo (`summarizeApp.py` + `text.txt`)
- Model loading example (`load_model.py`) and save/load helpers
- Small utility library in `mylib/` (calculator)

Quickstart (local)

1. Create a virtual environment and install dependencies:

```bash
python -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

2. Run the Gradio demo (opens a local web UI):

```bash
python helloApp.py
```

3. Run the summarization demo and paste some text from `text.txt`:

```bash
python summarizeApp.py
```

Docker (build and run)

Build the image:

```bash
docker build -t summarization-app:latest .
```

Run the container (example for Gradio default port 7860):

```bash
docker run --rm -p 7860:7860 summarization-app:latest
```

Notes
- `requirements.txt` in this repo includes development and optional packages; you can trim it for production.
- If a dependency install fails (large packages like `torch`), install system-specific wheels as needed.

Files of interest
- `helloApp.py` — Gradio demo
- `summarizeApp.py` — summarization example (uses `text.txt`)
- `load_model.py` / `save_model.py` — model I/O helpers
- `mylib/` — small helper package

Contributing / Development
- Tests: `pytest` (see `test_main.py`)
- Formatting: `black`

License
- See `LICENSE`.

References
- https://huggingface.co
- https://gradio.app

## Exercises

A. Modify the Hello World Gradio demo

1. Run the Gradio web application `helloApp.py`:

```bash
python helloApp.py
```

2. Change this application to be a calculator that adds two numbers using the calculator function in `mylib` (example: `from mylib.calculator import add`).

B. Run the `summarizeApp.py` by using `python summarizeApp.py` and try different inputs from `text.txt` to observe behavior changes.

C. Run `load_model.py` to see a full example of how to customize summarization applications.

D. Build a command-line tool with similar functionality to the Gradio app using `click`.

References
- [Coursera-MLOps-C2-Final-HuggingFace](https://github.com/nogibjj/Coursera-MLOps-C2-Final-HuggingFace)
