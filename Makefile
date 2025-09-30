.PHONY: dev start install clean

# Development server with auto-reload
dev:
		poetry run uvicorn main:app --host 0.0.0.0 --port 8000 --reload

# Production server
start:
		poetry run uvicorn main:app --host 0.0.0.0 --port 8000

# Install dependencies
install:
		poetry install

# Clean poetry cache
clean:
		poetry cache clear --all pypi