pragma solidity ^0.5.0;

contract SimpleStorage {

    uint public storedData;

    event Change(string message, uint newVal);

    constructor() public {
        emit Change("initialized", 0);
        storedData = 0;
    }

    function set(uint x) public {
        emit Change("set", x);
        storedData = x;
    }

    function get() public view returns (uint) {
        return storedData;
    }

}
