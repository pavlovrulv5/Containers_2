FROM python:3.9

ADD ./python/ /app

RUN pip install -r /app/requirements.txt

EXPOSE 8080

RUN apt update

ENTRYPOINT python /app/app.py