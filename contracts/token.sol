//SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";


contract CoolToken is ERC20("Cool Token", "Ct"),Ownable{

    function mintFifty() public onlyOwner {
        _mint(msg.sender, 50 * 10**18);
    }

}