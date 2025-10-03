FROM python:3.12-slim

# Install system dependencies for Poetry, Git, and Make
RUN apt-get update && apt-get install -y curl git make && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 - \
    && ln -s /root/.local/bin/poetry /usr/local/bin/poetry

# Set workdir
WORKDIR /app

# Copy poetry files first
COPY pyproject.toml poetry.lock* ./

# Configure poetry to not create virtual environment (since we're in a container)
RUN poetry config virtualenvs.create false

# Install dependencies
RUN poetry install --no-interaction --no-ansi

# Copy app code (excluding .venv if it exists)
COPY . .

# Expose FastAPI port
EXPOSE 8000

# Run with Poetry
CMD ["poetry", "run", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
