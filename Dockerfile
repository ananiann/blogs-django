# pull image dari dockerhub
FROM python:latest 

# set buffered python
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# membuat environment
ENV VIRTUAL_ENV="C:\opt\venv"

# menjalankan environment
RUN python -m venv %VIRTUAL_ENV%
ENV PATH="%VIRTUAL_ENV%\Scripts;%PATH%"

# proses update dependency di sistem operasi/image docker
RUN apt-get update -y

# setup working directory
RUN mkdir \app

WORKDIR /app

# install dependency
RUN python -m pip install --upgrade pip

# copy requirements
ADD . /app/
RUN pip install -r requirements.txt --no-cache-dir
