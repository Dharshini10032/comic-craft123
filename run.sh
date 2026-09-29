#!/usr/bin/env bash
[ -d env ] || python3 -m venv env
source env/bin/activate
pip install -r requirements.txt
[ -f .env ] || cp .env.example .env
uvicorn app.main:app --reload
