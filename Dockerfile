FROM ubuntu:24.04

RUN apt-get update; \
    apt-get install python3 python3-venv libaugeas0 -y; \
    python3 -m venv /opt/next-century-pay-hoa/;

WORKDIR /opt/next-century-pay-hoa/

COPY . .
RUN bin/pip3 install -r requirements.txt

USER 1000

ENTRYPOINT ["bin/python3", "main.py"]