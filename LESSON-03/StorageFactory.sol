// SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;
import {SimpleStorage} from "./SimpleStorage.sol";
contract StorageFactory
{
    uint favnum;
    SimpleStorage[] public listOfSimpleStorage;
    function createsimplestorage() public 
    {
        SimpleStorage inst=new SimpleStorage();
        listOfSimpleStorage.push(inst);
    }
    function storeFavoriteNumber(uint _simpleStorageIndex,uint _favoriteNumber) public
    {
        listOfSimpleStorage[_simpleStorageIndex].store(_favoriteNumber);
    }
    function getFavoriteNumber(uint _simpleStorageIndex) public view returns (uint)
    {
        return listOfSimpleStorage[_simpleStorageIndex].retrive();
    }
}
