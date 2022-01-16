# itway TNFT custom interfaces

Ссылка на TNFT интерфейсы от itgoldio - https://github.com/itgoldio/everscale-tnft-interfaces

Ниже представлены кастомные модули для NFT генератора.

## Интерфейсы
* [Data Interfaces](#dataint)
  * [IAuthor](#iauthor)
  * [IGrandBazar](#igrandbazar)

<h1 id="dataint">Data Interfaces</h1>

<h2 id="iauthor">IAuthor (ID: 41001)</h2>

Используется для добавления адреса автора Nft и значения его роялти в Data контракт.
```
address _addrAuthor;
uint8 public royalty;

function getAuthorInfo() external view override returns(address addrAuthor, uint8 authorRoyalty) {
    return (_addrAuthor, royalty);
}

function getAuthorInfoResponsible() external view override responsible returns(address addrAuthor, uint8 authorRoyalty) {
    return {value: 0, flag: 64}(_addrAuthor, royalty);
}
```

<h2 id="igrandbazar">IGrandBazar (ID: 41002)</h2>

Содержит набор методов, которые необходимо реализовать для обеспечения совместимости Nft с сервисом GrandBazar.

Данный модуль включает в себя стандартные модули от itgoldio: IName, IStoreIPFS, ICollectable, а также кастомный модуль IAuthor.
```
address _addrAllowance;
address[] _addrManagers;

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
```
