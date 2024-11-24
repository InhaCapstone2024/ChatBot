FROM python:3.9-slim

RUN apt-get update

WORKDIR /chatbot_service
ENTRYPOINT [ "sh", "./entrypoint.sh" ] 