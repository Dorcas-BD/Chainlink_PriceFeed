// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
    AggregatorV3Interface public priceFeed;

    /**
     * Network: Rinkeby
     * Aggregator: ETH/USD
     * Address: 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
     */
    constructor() {
        priceFeed = AggregatorV3Interface(
            0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        );
    }

    /**
     * Returns the latest price
     */
    // roundId: The round ID. Each price update gets a unique round ID.
    // answer: The current price.
    // startedAt: Timestamp of when the round started.
    // updatedAt: Timestamp of when the round was updated.
    // answeredInRound: The round ID of the round in which the answer was computed.

    //The ,, are the other variables that are not in use. answer is renamed as price
    function getLatestPrice() public view returns (int256) {
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return price;
    }

    function getDecimals() public view returns (uint8) {
        uint8 decimals = priceFeed.decimals();
        return decimals;
    }
}

// roundId: The round ID. Each price update gets a unique round ID.
// answer: The current price.
// startedAt: Timestamp of when the round started.
// updatedAt: Timestamp of when the round was updated.
// answeredInRound: The round ID of the round in which the answer was computed.
