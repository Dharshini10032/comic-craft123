# ComicCraft – AI Comic Story Creator
FastAPI + Gemini Flash (outline) + Gemini Pro (story) + Stable Diffusion (art) + FPDF (export)

## Run
- **Windows:** double-click `run.bat`  |  **Mac/Linux:** `./run.sh`
- Or manually: `python -m venv env`, activate it, `pip install -r requirements.txt`, copy `.env.example` to `.env`, then `uvicorn app.main:app --reload`
- Open http://127.0.0.1:8000 (API docs at /docs)

## Configure (.env)
- `GEMINI_API_KEY` – free key from https://aistudio.google.com/apikey. Without it the app runs in demo mode with a built-in story.
- Real Stable Diffusion art: `pip install torch diffusers transformers accelerate` (GPU recommended; first run downloads ~4 GB). Without it, stylised placeholder panels are drawn.
- Model names are in `.env` so you can change them if Google retires one.

## Routes
`/` form · `/generate` preview · `/generate-comic/json` API · `/download/{file}` · `/export-success` · `/test-image`
