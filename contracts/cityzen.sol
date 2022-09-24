// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

contract citizen {

    mapping(int256 => address) public  citizenMap;
    mapping(address=>int64) cityTypeMap;
    int256 citizenNumber = 0;
    function joinCity()  public{
        require(cityTypeMap[msg.sender]!=1,'this user is in the citizenMap');
        citizenMap[citizenNumber++] = msg.sender;
        cityTypeMap[msg.sender] = 1;
    }

}
