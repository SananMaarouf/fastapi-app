from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def read_root():
    return {"hello": "world"}

@app.get("/health")
async def health_check():
    return {"status": "healthy"}
