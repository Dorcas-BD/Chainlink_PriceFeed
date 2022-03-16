const main = async () => {
  const PriceConsumerV3 = await hre.ethers.getContractFactory("Transactions");
  const priceFeed = await PriceConsumerV3.deploy();

  await priceFeed.deployed();

  console.log("PriceConsumerV3 deployed to:", priceFeed.address);
}



const runMain = async () => {
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
}

runMain();