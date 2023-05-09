FROM ubuntu:20.04
USER 0

RUN echo 'install python3-pip vim'
RUN apt-get update && \
    apt-get install -y python3-pip vim


RUN echo 'install mysqlclient'
RUN apt install python3-dev build-essential && \
    apt install libssl1.1 && \
    apt install libssl1.1=1.1.1f-1ubuntu2 && \
    apt install libssl-dev && \
    apt install libmysqlclient-dev && \
    pip3 install mysqlclient

RUN echo 'install python package'
RUN pip3 install --upgrade pip && \
    pip3 install --no-cache-dir -r requirements.txt

RUN echo 'run django'
RUN ['python3 manage.py runserver']
