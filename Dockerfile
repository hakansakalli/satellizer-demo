FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python3-dev python3-pip
ADD . /code
WORKDIR /code
RUN pip3 install -q -r requirements.txt
EXPOSE 5002

# TEST ENV
ENV SERVER_WORKS 4
ENV MEOMEO HEY

CMD python3 app.py
