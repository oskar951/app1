FROM python:3.7

RUN apt-get update && apt-get install -y python3-pip

RUN mkdir /opt/SFIA2/

COPY . /opt/SFIA2/

WORKDIR /opt/SFIA2/

RUN pip3 install cryptography

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["/usr/local/bin/python3", "app.py"]
