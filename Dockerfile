FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt



RUN mkdir /app && \
    adduser -D user && \
    chown -R user:user /app

WORKDIR /app
COPY ./app /app
