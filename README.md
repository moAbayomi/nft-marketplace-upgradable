# NFT Marketplace Upgradable

This project is a simple upgradable NFT (Non-Fungible Token) Marketplace implemented in Solidity, utilizing delegate calls to switch between different versions of the marketplace contract.

## Contracts

### NFTMarketplaceUpgradable.sol

This contract acts as the proxy for different versions of the NFT marketplace. It uses delegate calls to execute functions from the current implementation contract.

#### Functions:

- **constructor(address _implementation):** Initializes the contract with the initial implementation address.
  
- **version():** Retrieves the version information from the current implementation contract using a delegate call.

### NFTMarketplaceV1.sol

This is the first version of the NFT marketplace contract, handling basic NFT listing, purchasing, and fund withdrawal.

#### Functions:

- **listNft(address nftAddress, uint256 tokenId, uint256 price):** Lists an NFT for sale.
  
- **buyNft(address nftAddress, uint256 tokenId):** Buys a listed NFT.
  
- **withdraw():** Withdraws funds from sales.
  
- **getNft(address nftAddress, uint256 tokenId):** Retrieves information about a specific NFT.
  
- **balance(address seller):** Retrieves the balance available for withdrawal for a specific seller.
  
- **version():** Returns the version information for this contract.

### NFTMarketplaceV2.sol

This is the second version of the NFT marketplace contract, maintaining similar functionality to V1 with potential improvements or modifications.

#### Functions:

- **(Functions similar to V1):** The functions in V2 mirror those in V1.

- **version():** Returns the version information for this contract.

## Usage

1. Deploy the `NFTMarketplaceUpgradable` contract with the initial implementation address, pointing to either `NFTMarketplaceV1` or `NFTMarketplaceV2`.
   
2. Interact with the deployed `NFTMarketplaceUpgradable` contract to utilize the marketplace functionalities.


## Versions

- `NFTMarketplaceV1.sol`: Initial version of the NFT marketplace. so that when you run the `version` function it returns the string "this is the first version".

- `NFTMarketplaceV2.sol`: Second version where the `version` function returns "this is the second version".

