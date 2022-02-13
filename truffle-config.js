module.exports = {

    networks: {
      development: {
      host: "127.0.0.1",     // Ganache Localhost (default: none)
      port: 7545,            // Ganache Standard Ethereum port (default: none)
      network_id: "*",       // Any network (default: none)
      },
    },
  
    contracts_directory: './src/contracts/',
    contracts_build_directory: './src/abis',
  
    compilers: {
      solc: {
       version:'^0.8.0',
       optimizer:{
         enabled:'true',
         runs: 200
       }
      }
    },
  
  };
  