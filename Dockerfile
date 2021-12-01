FROM python:3.9-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

EXPOSE 8081

RUN mkdir /app
COPY ./app /app

ENTRYPOINT gunicorn --bind 0.0.0.0:8081 server_ws:app