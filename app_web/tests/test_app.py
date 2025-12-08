import pytest
from app_web.app import app  # asegurate de que la ruta sea correcta

@pytest.fixture
def client():
    with app.test_client() as client:
        yield client

def test_home_page(client):
    response = client.get('/')
    assert response.status_code == 200
    
    assert b"Aplicaci" in response.data
def test_status(client):
    response = client.get('/status')
    assert response.json["status"] == "ok"
