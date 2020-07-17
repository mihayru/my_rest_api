FROM python:3.7-alpine
MAINTAINER MICHAEL B

ENV PYTHONUNBUFFERED  1
RUN python3.7 -m pip install --upgrade pip
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user