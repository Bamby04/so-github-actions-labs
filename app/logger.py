import logging

logging.basicConfig(
    filename='app/app.log',
    level=logging.INFO,
    format='[%(asctime)s] %(message)s',
    datefmt='%Y-%m-%d %H:%M:%S'
)

def log(message: str):
    logging.info(message)
    print(f"[LOG] {message}")
