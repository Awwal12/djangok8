FROM python:3.10.7-slim

COPY . /app
WORKDIR /app

RUN python3 -m venv /opt/venv

RUN /opt/venv/binpip install pip --upgrade &&\
    /opt/venv/binpip install -r requirements.txt &&\
    chmod +x entrypoint.sh


CMD [ "/app/entrypoint.sh" ]