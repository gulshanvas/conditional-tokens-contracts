module.exports = function(deployer, network, accounts) {
  console.log("accounts : ", accounts);
  deployer.deploy(artifacts.require("ConditionalTokens"), accounts[6]);
};
