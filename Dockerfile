FROM python:3.9-slim-bullseye

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

#EXPOSE $PORT

CMD gunicorn app:app --bind 0.0.0.0:$PORT