FROM node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

RUN npm install -g yo

CMD ["yo", "--help"]
