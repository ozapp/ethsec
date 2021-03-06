# Ozapp EthSec
A Docker container preconfigured with Trail of Bits and OpenZeppelin tools.

## Quick start

One of the quickest ways to get Ethereum up and running on your machine is by using Docker:
```
docker run --name ozapp-ethsec -v $(pwd):/home/ethsec \
           -p 8545:8545 -p 30303:30303 \
           -it --rm --entrypoint bash ozapp/ethsec:latest
```

## Sample of Trail of Bits tools command
```
etheno --manticore --ganache --truffle
etheno --echidna
solc-select 0.7.2
crytic-compile
slither tests/uninitialized.sol
python3 rattle-cli.py --input inputs/kingofether/KingOfTheEtherThrone.bin -O
```

## Sample of OpenZeppelin command
```
npm install
oz init
oz compile
oz deploy
```