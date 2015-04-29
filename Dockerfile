FROM node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

RUN npm install -g yo

RUN chmod g+rwx /root /root/.config /root/.config/configstore

CMD ["yo", "--help"]
