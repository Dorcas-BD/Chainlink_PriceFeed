// require("@nomiclabs/hardhat-waffle");

// This is a sample Hardhat task. To learn how to create your own go to
// https://hardhat.org/guides/create-task.html
// task("accounts", "Prints the list of accounts", async (taskArgs, hre) => {
//   const accounts = await hre.ethers.getSigners();

//   for (const account of accounts) {
//     console.log(account.address);
//   }
// });

/** 
 * @type import('hardhat/config').HardhatUserConfig
 */

 require("dotenv").config();
 require("@nomiclabs/hardhat-waffle");
 
 const { API_URL, PRIVATE_KEY } = process.env;
 
 module.exports = {
   solidity: "0.8.4",
   defaultNetwork: "rinkeby",
   networks: {
     hardhat: {},
     rinkeby: {
       url: API_URL,
       accounts: [`0x${PRIVATE_KEY}`]
     }
   }
 };