const { projectId, mnemonic } = require('./secrets.json');
const HDWalletProvider = require('@truffle/hdwallet-provider');
// see https://docs.openzeppelin.com/learn/connecting-to-public-test-networks#testnet-list
const testNetworks = [{
  name: 'ropsten',
  id: 3
}, {
  name: 'rinkeby',
  id: 4
}, {
  name: 'goerli',
  id: 6
}, {
  name: 'kovan',
  id: 42
}];

var networks = {
  development: {
    protocol: 'http',
    host: 'localhost',
    port: 8545,
    gas: 5000000,
    gasPrice: 5e9,
    networkId: '*',
  }
};

for (let index = 0; index < testNetworks.length; index++) {
  const network = testNetworks[index];
  networks[network.name] = {
    provider: () => new HDWalletProvider(
      mnemonic, `https://${network.name}.infura.io/v3/${projectId}`
    ),
    networkId: network.id,
    gasPrice: 10e9
  }
}

module.exports = {
  networks: networks
};

