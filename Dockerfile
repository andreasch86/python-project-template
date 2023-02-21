FROM python:3.9-buster

LABEL org.opencontainers.image.authors="SUN-CBCB"

ENV APP_HOME /python-project-template

WORKDIR ${APP_HOME}
ADD requirements.txt /tmp/requirements.txt

RUN echo "Installing requirements" \
    && pip install --upgrade pip \
    && pip install -r /tmp/requirements.txt

COPY . /python-project-template
RUN git config --global --add safe.directory /python-project-template
