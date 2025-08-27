  FROM ubuntu:24.04
  LABEL maintainer="MyeongjinSon"
  
  WORKDIR /root
  COPY . .

  RUN apt-get update && apt-get install -y build-essential
  RUN git clone https://github.com/jongchank/calc .
  RUN gcc -o calculator -Iinc cal_main.c add.c dur.c mul.c sub.c
   
   CMD ["./calculator"]
