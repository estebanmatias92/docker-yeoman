FROM strongloop/node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

USER root

# Install build and runtime dependencies
RUN deps=' \
        ruby \
    ' \
    && apt-get update && apt-get install -y $deps && rm -rf /var/lib/apt/lists/*

USER strongloop

RUN gem install sass compass \
    && npm install -g coffee-script stylus jade typescript

RUN npm install -g yo bower grunt-cli gulp \
    && npm cache clear

WORKDIR /

CMD ["yo", "--help"]
