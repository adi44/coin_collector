//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.6;

import "../node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Token is ERC20{
     uint256 private _deployed = block.timestamp;
     constructor (string memory name, string memory symbol,uint256 supply) ERC20(name, symbol) {
        _mint(msg.sender, supply);
        
    }

    function whenDeployed() external view returns(uint256){

        return(_deployed);
    }


}
