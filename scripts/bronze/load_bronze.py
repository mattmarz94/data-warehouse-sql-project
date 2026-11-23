import os
from dotenv import load_dotenv
from sqlalchemy import URL, create_engine, text

load_dotenv()

url = URL.create(
    "mysql+pymysql",
    username=os.getenv("MYSQL_USER"),
    password=os.getenv("MYSQL_PASSWORD"),
    host=os.getenv("MYSQL_HOST"),
    port=int(os.getenv("MYSQL_PORT")),
    database="bronze",
)
engine = create_engine(url)

with engine.connect() as conn:
    version = conn.execute(text("SELECT VERSION()")).scalar()
version
