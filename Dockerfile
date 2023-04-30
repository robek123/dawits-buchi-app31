FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

LABEL maintainer='Dawit'

COPY ./app /app

RUN pip install --upgrade pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt