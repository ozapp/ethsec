FROM trailofbits/eth-security-toolbox

LABEL maintainer="Dev <docker@ozapp.mobi>"

USER root
RUN npm install -g @openzeppelin/cli
RUN oz --version

COPY ./package.json /home/ethsec/

RUN cd /home/ethsec && npm install && npm audit fix

EXPOSE 8545
EXPOSE 30303