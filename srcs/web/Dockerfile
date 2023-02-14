FROM debian:buster-20230202

RUN apt-get update

RUN apt-get install python3 python3-pip -y

COPY app /app

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3", "app.py"]
