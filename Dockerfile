FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    git

WORKDIR /app

COPY main.cpp /app/test.cpp
RUN c++ test.cpp

CMD ["/app/a.out"]
# COPY installed_packages.txt /tmp/installed_packages.txt
# COPY install_packages.sh /tmp/install_packages.sh
# RUN chmod +x /tmp/install_packages.sh
# RUN /tmp/install_packages.sh

# COPY requirements.txt /tmp/requirements.txt
# RUN apt-get install -y python3-pip && \
#     pip3 install -r /tmp/requirements.txt


# COPY environment_variables.txt /tmp/environment_variables.txt
# RUN set -o allexport; source /tmp/environment_variables.txt; set +o allexport

