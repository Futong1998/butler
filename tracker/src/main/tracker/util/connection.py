import os

from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import sessionmaker
from sqlalchemy import create_engine
from sqlalchemy.orm.scoping import scoped_session

DB_URL = os.environ.get('DB_URL')

if not DB_URL:
    raise ValueError("DB_URL not present in the environment")

Base = automap_base()
engine = create_engine(DB_URL, pool_size=8, max_overflow=2)
Base.prepare(engine, reflect=True)

session_factory  = sessionmaker(bind=engine, expire_on_commit=False)
Session = scoped_session(session_factory)