FROM strongloop/node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

# Install build and runtime dependencies
RUN deps=' \
        ruby1.9.1-dev \
    ' \
    && apt-get update && apt-get install -y $deps && rm -rf /var/lib/apt/lists/* \
    && gem install sass compass \
    && npm install -g coffee-script stylus jade typescript

RUN npm install -g yo bower grunt-cli gulp \
    && npm cache clear

WORKDIR /

CMD ["yo", "--help"]
