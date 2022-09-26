// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage{

    //0xf8e81D47203A594245E36C48e151709F0C19fBe8
    //boolean, uint, int, address, bytes

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToFevoriteNumber;

    //by default it will be initialized to 0. no need to explicitly assign like other languages
    uint public favoriteNumber;
    People public person = People({favoriteNumber : 7, name : "Padmasekhar"});

    People[] public people;

    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFevoriteNumber[_name] = _favoriteNumber;
    }

}