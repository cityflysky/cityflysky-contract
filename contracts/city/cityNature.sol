pragma solidity 0.8.6;

contract cityNature {
    mapping(address=>int64) cityTypeMap;
    constructor() public {
        admin = msg.sender;
    }
    modifier onlyAdmin() {
        require(msg.sender == admin, "only admin allowed");
        _;
    }
    function cityNature(){

    }
    function setCityType(address cityAddress,int64 cityType) onlyAdmin{
        cityTypeMap[cityAddress] = cityType;
    }
}
