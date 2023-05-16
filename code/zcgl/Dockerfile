# 从仓库拉取带有 python 3.8 的 Linux 环境
FROM python:3.8-slim-buster

# 设置 python 环境变量
ENV PYTHONUNBUFFERED 1

# 创建 code 文件夹并将其设置为工作目录
RUN mkdir /code
WORKDIR /code

#为安装mysqlclient做准备，直接安装mysqlclient会失败
RUN apt-get update && \
    apt-get install -y vim python3-dev default-libmysqlclient-dev build-essential

# 将当前目录复制到容器的 code 目录
ADD . /code/

# 安装库
RUN pip install -r requirements.txt

