FROM node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

RUN npm install -g yo bower grunt-cli gulp

COPY config/yo/lib/cli.js /usr/local/lib/node_modules/yo/lib/

CMD ["yo", "--help"]
