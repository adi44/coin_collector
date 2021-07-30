//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.6;
interface ICoinCollector {
function isCollected(address coin) external returns (bool);
function collectCoin(address coin) external;
}