FROM debian:latest

MAINTAINER Competitor_1

# install python
RUN apt update 
RUN apt install python3.9 python3-pip -y

# install requirements

RUN pip3 install -U click 
RUN pip3 install Flask
RUN pip3 install itsdangerous
RUN pip3 install Jinja2
RUN pip3 install MarkupSafe
RUN pip3 install PyYAML
RUN pip3 install Werkzeug

# add aplication
# ADD ./app.py /app_wsr
# ADD ./env.yml /app_wsr
# ADD ./data /app_wsr/data
RUN mkdir /app_wsr
COPY . /app_wsr

VOLUME [ "/app_wsr/data" ]

WORKDIR /app_wsr

EXPOSE 8080

CMD python3 ./app.py