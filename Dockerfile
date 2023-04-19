# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "-m" , "flask", "run", "--host=0.0.0.0"]

# Build : docker build --tag python-docker .
# Run : docker run --publish 8000:5000 python-docker
# connect to the localhost on port 5000:
# curl localhost:8000
