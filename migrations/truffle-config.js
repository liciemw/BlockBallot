module.exports = {
  networks: {
    development: {
      host: "127.0.0.1", // Localhost
      port: 8545,        // Port
      network_id: "*",   // Any network
    },
  },
  compilers: {
    solc: {
      version: "0.4.25", // Specify the version
    },
  },
};
