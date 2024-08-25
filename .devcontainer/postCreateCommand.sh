#!/bin/bash

# Create the virtual environment (if missing)
if [ ! -f .venv/bin/activate ]; then
    echo "Creating the virtual environment (.venv)..."
    virtualenv .venv
fi

#activate the virtual environment for this terminal session
echo "✅ Setup done" 

# Activate the virtual environment for this terminal session
echo ""
echo "Please don't forget to run the following command in your terminal..."
echo "⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️"
echo "source .school.venv/bin/activate"
echo "⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️"
echo "...(to activate the virtual env) before installing Python dependencies!"
echo ""