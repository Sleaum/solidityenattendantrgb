// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract Wallet {

    struct monWallet {
        uint money;
        uint nbTransfer;
    }

    mapping (address => monWallet) wallets;

    receive() external payable {
        wallets[msg.sender].money += msg.value;
        wallets[msg.sender].nbTransfer += 1;
    }

    function withdrawAll(address payable address_) external {
        uint monTotal = wallets[msg.sender].money;
        wallets[msg.sender].money = 0;
        address_.transfer(monTotal);
        wallets[msg.sender].nbTransfer += 1;
    }

    function getMoney() external view returns (uint) {
        return wallets[msg.sender].money;
    }

    function getTotalMoney() public view returns (uint) {
        return address(this).money;
    }

    function getNbTransfer() external view returns(uint){
        return wallets[msg.sender].nbTransfer;
    }
}
