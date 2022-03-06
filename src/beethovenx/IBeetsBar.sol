// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

interface IBeetsBar {
  function enter(uint256 amount_) external;
  function leave(uint256 shareOfFreshBeets_) external;
}
