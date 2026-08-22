from sqlalchemy import create_engine, text
import pandas as pd


DATABASE_URL = "sqlite:///../database/amazon_sales.db"


def get_engine():
    """
    Create and return a SQLAlchemy database engine.
    """
    return create_engine(DATABASE_URL)


def test_connection():
    """
    Test whether the database connection works.
    """
    engine = get_engine()

    try:
        with engine.connect() as connection:
            print("Database connection successful!")
    except Exception as e:
        print("Database connection failed:", e)


def read_query(query, params=None):
    """
    Execute a SQL query and return the result as a Pandas DataFrame.
    """
    engine = get_engine()

    return pd.read_sql(
        text(query),
        engine,
        params=params
    )