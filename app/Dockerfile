FROM debian:latest

RUN apt update && apt install python3-pip python3.9 -y

RUN pip3 install Flask PyYAML Werkzeug MarkupSafe Jinja2 itsdangerous click

WORKDIR /

RUN mkdir /some-app
COPY app.py /some-app/app.py
COPY env.yml /some-app/env.yml

WORKDIR /some-app
RUN mkdir data
VOLUME [ "/some-app/data" ]
CMD python3 app.py