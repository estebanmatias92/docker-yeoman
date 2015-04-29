FROM node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

RUN npm install -g yo

RUN adduser --disabled-password --gecos "" yeoman; \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ENV HOME /home/yeoman

USER yeoman

CMD ["yo", "--help"]
