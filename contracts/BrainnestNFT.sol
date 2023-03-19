// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.8.18;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract BrainnestNFT is ERC721URIStorage, Ownable {
    using  Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    string private nftName = "brainnest-nft";
    string private nftIdentifier = "BNNFT_1.2";

    constructor() ERC721(nftName, nftIdentifier){}

    function mintNFT(address _receipentAddress, string calldata tokenURI) 
    public onlyOwner
    returns (uint256) {
        // increment counter
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(_receipentAddress, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}



