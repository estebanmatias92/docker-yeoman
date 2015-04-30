FROM node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

RUN adduser --disabled-password --group root --gecos "" yeoman; \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

ENV HOME /home/yeoman

USER yeoman

RUN npm install -g yo bower grunt-cli gulp

COPY config/yo/lib/cli.js /usr/local/lib/node_modules/yo/lib/

CMD ["yo", "--help"]
