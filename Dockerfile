FROM ubuntu:20.04

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code
COPY . /code/

# Install dependencies
RUN apt-get update && apt-get install -y python3-pip
RUN pip install -r requirements.txt

EXPOSE 8010