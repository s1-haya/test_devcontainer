FROM ubuntu:22.04

COPY installed_packages.txt /tmp/installed_packages.txt
RUN apt-get update && \
    xargs apt-get install -y < /tmp/installed_packages.txt && \
    apt-get clean

COPY requirements.txt /tmp/requirements.txt
RUN apt-get install -y python3-pip && \
    pip3 install -r /tmp/requirements.txt


COPY environment_variables.txt /tmp/environment_variables.txt
RUN set -o allexport; source /tmp/environment_variables.txt; set +o allexport

EXPOSE 8080

WORKDIR /
