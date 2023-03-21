FROM ubuntu:18.04
RUN apt-get update && apt-get install -y python3 python3-pip
RUN pip3 install Flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
