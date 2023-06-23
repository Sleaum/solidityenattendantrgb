pragma solidity 0.8.7;

contract test {

    uint8 nombre;
    bool monBool;
    address monAddress;

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
