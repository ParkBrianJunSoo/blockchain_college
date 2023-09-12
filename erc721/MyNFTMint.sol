// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";

contract MyNFT is ERC721Enumerable, Ownable, ERC721Burnable, Pausable {
    constructor() ERC721("MyNFT", "MyNFT") {
        for (int i=0; i < 10; i++) {
            _safeMint(msg.sender, uint256(i+1));
        }
    }

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

    function Pause() public {
        _pause();
    }

    function UnPause() public {
        _unpause();
    }

    function _beforeTokenTransfer(address from, address to, uint256 firstTokenId, uint256 batchSize) internal whenNotPaused override {
            super._beforeTokenTransfer(from, to, firstTokenId, batchSize);
    }
}