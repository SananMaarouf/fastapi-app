# FastAPI App

A simple FastAPI application with Poetry dependency management and dev container setup.

## Quick Start

### Running the Application

```bash
# Easy way (recommended)
make dev

# Or the long way
poetry run uvicorn main:app --host 0.0.0.0 --port 8000 --reload
```

**Access the app:**
- Browser/Postman: `http://localhost:8000/`
- API docs: `http://localhost:8000/docs`
- Alternative docs: `http://localhost:8000/redoc`

### Available Commands

```bash
# Development server with auto-reload
make dev

# Production-like server
make start

# Install dependencies
make install
```

### Development Setup

**First time setup:**
1. Clone the repository
2. Open in VS Code: `code .`
3. When prompted, select "Reopen in Container"
4. Wait for the dev container to build and install dependencies

**If dev container doesn't auto-setup:**
```bash
# Rebuild dev container manually
# Ctrl+Shift+P -> "Dev Containers: Rebuild Container"
```

### Useful Commands

```bash
# Install new dependencies
poetry add <package-name>

# Install development dependencies
poetry add --group dev <package-name>

# Check installed packages
poetry show

# Update dependencies
poetry update

# Run commands in the poetry environment
poetry run <command>

# Activate poetry shell
poetry shell
```

### Git Commands

```bash
# Initial setup (already done)
git init
git add .
git commit -m "Initial commit"

# Daily workflow
git add .
git commit -m "Your commit message"
git push

# Pull latest changes
git pull
```

### Project Structure

```
fastapi-app/
├── .devcontainer/          # Dev container configuration
│   └── devcontainer.json
├── main.py                 # FastAPI application
├── pyproject.toml         # Poetry configuration
├── Dockerfile             # Container setup
├── Makefile              # Build commands
└── README.md              # This file
```

### Troubleshooting

**Port issues:**
- Check VS Code "Ports" tab for port forwarding
- Ensure you're using `http://localhost:8000/`

**Dependencies not working:**
```bash
make install
```

**Container issues:**
- Rebuild container: Ctrl+Shift+P -> "Dev Containers: Rebuild Container"