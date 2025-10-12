// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContract;

    function createSimpleStorageContract() public{
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContract.push(newSimpleStorageContract);
    }

    function CallStore(uint256 _index, uint256 _address) public{
        SimpleStorage NewSimpleStorageContract = listOfSimpleStorageContract[_index];
        NewSimpleStorageContract.store(_address);
        // listOfSimpleStorageContract[_index].store(_address);
    }

    function getStore(uint256 _index) public view returns(uint256){
        SimpleStorage GetSimpleStorageContract = listOfSimpleStorageContract[_index];
        return GetSimpleStorageContract.retrive();
        // return listOfSimpleStorageContract[_index].retrive();
    }


}

