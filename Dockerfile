FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
    build-essential \
    git

WORKDIR /app

COPY main.cpp /app/test.cpp
RUN c++ test.cpp

CMD ["/app/a.out"]
