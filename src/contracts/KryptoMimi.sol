// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import './ERC721Connector.sol';

contract KryptoMimi is ERC721Connector {

    // array to store our nfts
    string [] public KryptoMimiz;

    mapping(string => bool) _KryptoMimizExists;

    function mint(string memory _KryptoMimi) public {

        require(!_KryptoMimizExists[_KryptoMimi],
        'Error - KryptoMimi already exists');
        // this is deprecated - uint _id = KryptoMimiz.push(_KryptoMimi);
        KryptoMimiz.push(_KryptoMimi);
        uint _id = KryptoMimiz.length - 1;

        // .push no longer returns the length but a ref to the added element
        _mint(msg.sender, _id);

        _KryptoMimizExists[_KryptoMimi] = true;

    }

    constructor() ERC721Connector('KryptoMimi','CMIMI')
 {}

}
