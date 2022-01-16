pragma ton-solidity >= 0.47.0;

interface IAuthor {
    function getAuthorInfo() external view returns(address addrAuthor, uint8 authorRoyalty); 
    function getAuthorInfoResponsible() external view responsible returns(address addrAuthor, uint8 authorRoyalty);
}

library AuthorLib {
    int constant ID = 41001;
}

abstract contract Author is IAuthor{

    address _addrAuthor;
    uint8 public royalty;

    function getAuthorInfo() external view override returns(address addrAuthor, uint8 authorRoyalty) {
        return (_addrAuthor, royalty);
    }

    function getAuthorInfoResponsible() external view override responsible returns(address addrAuthor, uint8 authorRoyalty) {
        return {value: 0, flag: 64}(_addrAuthor, royalty);
    }

}