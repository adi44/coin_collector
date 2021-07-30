const CoinCollector = artifacts.require("CoinCollector");

module.exports = function (deployer) {
  deployer.deploy(CoinCollector);
};
