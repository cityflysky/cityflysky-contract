// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

contract citizen {
    mapping(int256 => address) public  citizenMap;
    int256 citizenNumber = 0;
    function joinCity() public external{
        citizenMap[citizenNumber++] = msg.sender;
    }
}
