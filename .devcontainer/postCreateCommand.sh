#!/bin/bash

# Create the virtual environment (if missing)
if [ ! -f .venv/bin/activate ]; then
    echo "Creating the virtual environment (.venv)..."
    virtualenv .venv
fi

# Activate the virtual environment for this terminal session
source .venv/bin/activate

echo "⌛️ Installing packages..." 
pip install -r requirements.txt

echo "✅ Setup done" 
