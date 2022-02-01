FROM python:3.8.10-slim

ENV PYTHONBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

COPY django_app/requirements.txt .
COPY dockerfiles/docker-entrypoint.sh .

RUN pip install -r requirements.txt
RUN ["chmod", "+x", "docker-entrypoint.sh"]

EXPOSE 8000

COPY django_app/. .

ENTRYPOINT ["./docker-entrypoint.sh"]
