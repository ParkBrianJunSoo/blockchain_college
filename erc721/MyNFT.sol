// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract MyNFT is ERC721 {
    constructor() ERC721("Damn", "Damn") {
        for(int i=0; i < 10; i++) {
            _safeMint(msg.sender, uint256(i+1));
        }
    }
}