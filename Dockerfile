FROM estebanmatias92/node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

RUN npm install -g yo bower grunt-cli gulp

CMD ["yo", "--help"]
