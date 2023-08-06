// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address public owner;
    bool public mintingFinished = false;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier canMint() {
        require(!mintingFinished, "Minting has already been finished");
        _;
    }

    constructor(string memory name, string memory symbol, uint256 initialSupply) ERC20(name, symbol) {
        owner = msg.sender;
        _mint(owner, initialSupply * (10**decimals()));
    }

    function mint(address account, uint256 amount) public canMint onlyOwner {
        _mint(account, amount);
    }

    function finishMinting() public onlyOwner {
        mintingFinished = true;
    }
}
