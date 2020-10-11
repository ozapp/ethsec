FROM ethereum/client-go

LABEL maintainer="Dev <docker@ozapp.mobi>"

RUN apk update
RUN apk add --no-cache --update bash git openssh nodejs npm yarn jq

RUN node --version
RUN yarn --version
RUN npm --version

# truffle compiler will try to create a directory, so we create it and give permission
RUN mkdir /root/.config && chmod 777 -R /root/.config

RUN npm install -g truffle
RUN truffle version

RUN npm install -g  ganache-cli
RUN ganache-cli --version

RUN npm install -g @openzeppelin/cli
RUN oz --version

RUN mkdir /solc && chmod 777 -R /solc
# change the work directory to the mounted volume
WORKDIR /solc

COPY ./package.json /solc/

RUN cd /solc

RUN npm install

# openzeppelin compiler will try to create a directory: /.solc, so we create it and give permission
RUN mkdir /.solc && chmod 777 -R /.solc