# solc
A docker image template for Solidity with Smart Contract Toolkit like Truffle, OpenZeppelin and ganache-cli.

## Quick start

One of the quickest ways to get Ethereum up and running on your machine is by using Docker:
```
docker run -d --name ozapp-solc -v $(pwd):/solc \
           -p 8545:8545 -p 30303:30303 \
           ozapp/solc
```

## Start a simulate full client
```
npm start
```

## Sample of oz command
```
oz init
oz compile
oz deploy
```