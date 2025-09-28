// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleStorage{
    uint256 public fevoriteNumber;

    function store(uint256 _fevoriteNumber) public virtual {
        fevoriteNumber = _fevoriteNumber;
    }
        //pure, view
    function retrive() public view returns(uint256){
        return fevoriteNumber;
    }

    struct Person{
        string name;
        uint256 number;
    }

    Person public ali = Person("Ali", 26);
    Person public kazi = Person({name: "Kazi", number:25});

    Person[] public person;

    mapping (string=>uint256) public nameToNumber;

    // calldata->temp memory, can't change, memory->temp memory, can change , storage (permanent)
    // function memory, calldata, storage  
    function addPerson(string memory _name, uint256 _number) public{
        Person memory newPerson = Person(_name, _number);
        person.push(newPerson);
        nameToNumber[_name]=_number;
        // person.push(Person(_name, _number));
    }


}