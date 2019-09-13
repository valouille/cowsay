FROM debian:10

RUN groupadd -r valouille && useradd --create-home -r -g valouille valouille

RUN apt-get update && \
  apt-get install -y cowsay polygen && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean

COPY rabbit.cow /home/valouille/
COPY loop.sh /home/valouille/

USER valouille

WORKDIR /home/valouille

CMD ["./loop.sh"]
