// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts@5.0.2/token/ERC721/ERC721.sol";

contract OpenAccess is ERC721 {
    uint256 private _nextTokenId;

    constructor() ERC721("Open Access Token", "OPEN") {}

    function grantAccess() public {
        uint256 tokenId = _nextTokenId++;
        _safeMint(msg.sender, tokenId);
    }
}
