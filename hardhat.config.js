/** @type import('hardhat/config').HardhatUserConfig */

let env = require('dotenv').config();
require('@nomiclabs/hardhat-ethers');
const {ETHER_URL, PRIVATE_KEY} = env.parsed;
console.log(ETHER_URL, PRIVATE_KEY);

module.exports = {
  solidity: "0.8.18",
  defaultNetwork: "goerli",
  networks: {
    hardhat: {},
    goerli: {
      url: ETHER_URL,
      accounts: [`0x${PRIVATE_KEY}`]
    }
  }
};
