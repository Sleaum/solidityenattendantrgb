// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.18;

contract test {

    uint8 nombre;
    bool monBool;
    string monString;
    address monAddress;

    address maLastPerson;
    uint monSolde;

    mapping(address => uint) MesBalances;


    struct MaStruct {
        uint balance;
        uint compteur;
    }
    mapping(address => MaStruct) MonMapping;

    receive() external payable {
        maLastPerson = msg.sender;
        monSolde += msg.value;
        MesBalances[msg.sender] += msg.value;
        MonMapping[msg.sender].balance += msg.value;
        MonMapping[msg.sender].compteur += 1;

    }

    function getBalance() external view returns(uint){
        return MonMapping[msg.sender].balance;
    }

    function getCompteur() external view returns (uint){
        return MonMapping[msg.sender].compteur;
    }

    function getMesBalances(address address_) external view returns(uint){
        return MesBalances[address_];
    }

    function getLastPerson() external view returns(address){
        return maLastPerson;
    }

    function getMonSolde() external view returns(uint){
        return monSolde;
    }

    function getString() public view returns(string memory){
        return monString;
    }

    function setString(string memory string_) public {
        monString = string_;
    }

    function getAddress() public view returns(address){
        return monAddress;
    }

    function setAddress(address address_) public {
        monAddress = address_;
    }

    function getBool() public view returns(bool) {
        return monBool;
    }

    function setBool(bool bool_) public {
        monBool = bool_;
    }

    function getNombre() public view returns(uint) {
        return nombre;
    }

    function setNombre(uint8 nombre_) public {
        nombre = nombre_;
    }
}
