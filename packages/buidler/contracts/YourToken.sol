pragma solidity >=0.6.0 <0.7.0;

import "@nomiclabs/buidler/console.sol";

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YourToken is ERC20 {
    constructor() public ERC20("YourToken ", "BTC") {
        _mint(msg.sender, 21 * 10**18);
    }

    function plant() public payable {
        _mint(msg.sender, msg.value);
    }
}
