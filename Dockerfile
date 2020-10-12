FROM trailofbits/eth-security-toolbox

LABEL maintainer="Dev <docker@ozapp.mobi>"

USER root
RUN npm install -g @openzeppelin/cli
RUN oz --version

USER ethsec
WORKDIR /home/ethsec
COPY ./package.json /home/ethsec/

EXPOSE 8545
EXPOSE 30303