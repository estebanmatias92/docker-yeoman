FROM node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

RUN npm install -g yo bower grunt-cli gulp

RUN adduser --disabled-password --gecos "" yeoman; \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ENV HOME /home/yeoman

USER yeoman

COPY config/yo/lib/cli.js /usr/local/lib/node_modules/yo/lib/

CMD ["yo", "--help"]
