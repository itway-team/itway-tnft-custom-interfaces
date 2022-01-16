pragma ton-solidity = 0.47.0;

interface ICollectable {
    function getCollectionInfo() external returns(string collectionName, uint8 editionNumber, uint8 editionAmount); 
    function getCollectionInfoResponsible() external responsible returns(string collectionName, uint8 editionNumber, uint8 editionAmount);
}

library CollectableLib {
    int constant ID = 5;        
}

abstract contract Collectable is ICollectable{

    string _collectionName;
    uint8 _editionNumber;
    uint8 _editionAmount;

    function getCollectionInfo() external override returns(string collectionName, uint8 editionNumber, uint8 editionAmount) {
        return (_collectionName, _editionNumber, _editionAmount);
    }

    function getCollectionInfoResponsible() external override responsible returns(string collectionName, uint8 editionNumber, uint8 editionAmount) {
        return {value: 0, flag: 64}(_collectionName, _editionNumber, _editionAmount);
    }

} 