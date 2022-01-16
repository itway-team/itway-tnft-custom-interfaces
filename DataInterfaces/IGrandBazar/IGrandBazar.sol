pragma ton-solidity >= 0.47.0;

import '../../everscale-tnft-interfaces/DataInterfaces/IName/IName.sol';
import '../../everscale-tnft-interfaces/DataInterfaces/IStoreIPFS/IStoreIPFS.sol';
import '../../everscale-tnft-interfaces/DataInterfaces/ICollectable/ICollectable.sol';

import '../IAuthor/IAuthor.sol';

interface IGrandBazar is IName, IStoreIPFS, ICollectable, IAuthor {
    function lendOwnership(address _addr) external;
    function returnOwnership() external;
    function addManager(address _addr) external;
    function removeManager(address _addr) external;
    function getAllowance() external view returns (address addr);
    function getManagersList() external view returns (address[] managers);
    function getInfo() external view returns (
        address addrRoot,
        address addrOwner,
        address addrAuthor,
        address addrData,
        uint256 id,
        bytes name,
        bytes url,
        uint8 number,
        uint8 amount
    );
    function getInfoResponsible() external view responsible returns (
        address addrRoot,
        address addrOwner,
        address addrAuthor,
        address addrData,
        uint256 id,
        bytes name,
        bytes url,
        uint8 number,
        uint8 amount
    );
}

library GrandBazarLib {
    int constant ID = 41002;        
}

abstract contract GrandBazar is IGrandBazar, Name, StoreIPFS, Collectable, Author {

    address _addrAllowance;
    address[] _addrManagers;

    function getAllowance() external view override returns(address addr) {
        return _addrAllowance;
    }

    function getManagersList() external view override returns (address[] managers) {
        return _addrManagers;
    }

}