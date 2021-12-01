FROM python:3.9-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt

RUN pip install -r /requirements.txt

EXPOSE 8081

RUN mkdir /app && \
    chmod 775 /app && \
    touch /app/gunicorn.sh && \
    chown administrator:administrator /app/gunicorn.sh && \
    chmod +x /gunicorn.sh
WORKDIR /app
COPY ./app /app

ENTRYPOINT [ "./gunicorn.sh" ]