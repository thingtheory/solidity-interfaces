// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IBeetsBar is IERC20 {
  function enter(uint256 amount_) external;
  function leave(uint256 shareOfFreshBeets_) external;
}
