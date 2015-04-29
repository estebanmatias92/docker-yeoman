FROM node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

RUN npm install -g yo bower grunt-cli gulp

RUN adduser --disabled-password --groups root --gecos "" yeoman; \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers; \
  chmod 775 bin lib lib/node_modules

ENV HOME /home/yeoman

USER yeoman

CMD ["yo", "--help"]
