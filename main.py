from fastapi import FastAPI
from fastapi.responses import HTMLResponse

app = FastAPI()

@app.get("/")
def hello_world():
    return HTMLResponse("""
    <h1>Olá mundo</h1>
    <spam>serviço de test</spam>
    """)