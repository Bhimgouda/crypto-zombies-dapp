// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

// This is an abstract contract
// It does not contain any implementation details and is intended to be used as an interface only.

abstract contract ERC721 {
  event Transfer(address indexed _from, address indexed _to, uint256 indexed _tokenId);
  event Approval(address indexed _owner, address indexed _approved, uint256 indexed _tokenId);

  function balanceOf(address _owner) external virtual view returns (uint256);
  function ownerOf(uint256 _tokenId) external virtual view returns (address);
  function transferFrom(address _from, address _to, uint256 _tokenId) external virtual payable;
  function approve(address _approved, uint256 _tokenId) external virtual payable;
}