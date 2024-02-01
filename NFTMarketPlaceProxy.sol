// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import "./NFTMarketplaceV1.sol";
import "./NFTMarketplaceV2.sol";

contract NFTMarketPlaceProxy {
    address public implementation;

    function setImpl(address _implementation) public {
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
