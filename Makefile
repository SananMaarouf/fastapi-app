.PHONY: dev start install clean up up-prod down logs

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

# Start development services (Nginx + FastAPI with reload)
up:
		docker compose up -d nginx fastapi-app

# Start production services (Nginx + FastAPI prod with replicas)
up-prod:
		docker compose up -d nginx fastapi-app-prod --scale fastapi-app-prod=3

# Stop all services
down:
		docker compose down

# View logs
logs:
		docker compose logs -f