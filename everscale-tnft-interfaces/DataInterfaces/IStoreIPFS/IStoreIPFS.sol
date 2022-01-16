pragma ton-solidity = 0.47.0;

interface IStoreIPFS {
    function getDataUrl() external returns(string dataUrl);
    function getDataUrlResponsible() external responsible returns(string dataUrl);
}

library StoreIPFSLib {
    int constant ID = 6;        
}

abstract contract StoreIPFS is IStoreIPFS {
    
    string _dataUrl;

    function getDataUrl() external override returns(string dataUrl) {
        return _dataUrl;
    }

    function getDataUrlResponsible() external override responsible returns(string dataUrl) {
        return {value: 0, flag: 64}(_dataUrl);
    }
}