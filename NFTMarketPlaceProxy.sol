// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "./NFTV1.sol";
import "./NFTV2.sol";

contract NFTMarketPlaceProxy {
    address public implementation;

    constructor(address _implementation) {
        implementation = _implementation;
    }

    function version() public returns (string memory) {
        (bool success, bytes memory data) = implementation.delegatecall(
            abi.encodeWithSignature("version()")
        );
        require(success, "delegate call failed");

        string memory value = abi.decode(data, (string));

        return value;
    }
}
