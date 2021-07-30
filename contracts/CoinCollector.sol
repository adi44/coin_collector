//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.6;
import "./Token.sol";

contract CoinCollector{

    address public admin;
    mapping(address=>bool) coinsCollection;
    event CoinCollected(address coin, uint time);
    Token public token;
    constructor() {
        admin = msg.sender; }
    
    function collectCoin(address coin) public {

        token = Token(coin);
        require(token.whenDeployed() + block.timestamp > 100000,"it might be fake");
        require(token.totalSupply()>100000000000, "it might be fake");
        coinsCollection[coin] = true;
        emit CoinCollected(coin, block.timestamp);
    }

    function isCollected(address coin) view public returns(bool) {
        return coinsCollection[coin];
        
    }
}