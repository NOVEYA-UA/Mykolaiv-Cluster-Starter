#!/usr/bin/env bash
set -euo pipefail
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
uvicorn src.fdl_engine:app --host 0.0.0.0 --port 8080
