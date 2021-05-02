FROM python:3.9.4-buster
USER root

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt install -y nodejs npm
RUN pip install --upgrade pip && pip install pipenv

RUN pip install jupyterlab
RUN jupyter labextension install


RUN jupyter lab