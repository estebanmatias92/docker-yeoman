FROM strongloop/node

MAINTAINER "Matias Esteban" <estebanmatias92@gmail.com>

# Install build and runtime dependencies
RUN deps=' \
        ruby-dev \
    ' \
    && sudo apt-get update && sudo apt-get install -y $deps && sudo rm -rf /var/lib/apt/lists/*

RUN gem install sass compass \
    && npm install -g coffee-script stylus jade typescript

RUN npm install -g yo bower grunt-cli gulp \
    && npm cache clear

WORKDIR /

CMD ["yo", "--help"]
