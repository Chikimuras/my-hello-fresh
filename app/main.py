from fastapi import FastAPI

from app.api.v1 import endpoints

app = FastAPI()

app.include_router(endpoints.router, prefix="/api/v1")

if __name__ == "__main__":
    import uvicorn

    uvicorn.run(app, host="localhost", port=8000, reload=True)
