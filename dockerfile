FROM ubuntu:24.04
LABEL maintainer="MyeongjinSon"

WORKDIR /root

RUN apt-get update && apt-get install -y git build-essential \
    && git clone https://github.com/legendson20/kmu_calc.git && rm -rf /var/lib/apt/lists/*

WORKDIR /root/kmu_calc

RUN gcc -o calculator -Iinc cal_main.c add.c dur.c mul.c sub.c

ENTRYPOINT ["./calculator"]