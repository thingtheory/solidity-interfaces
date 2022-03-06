// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.6;

interface IHevm {
    // Set timestamp to x
    function warp(uint x) external;
    // Set block to x
    function roll(uint x) external;
    //  Sets the slot loc of contract c to val
    function store(address c, bytes32 loc, bytes32 val) external;
    // Reads the slot loc of contract c
    function load(address c, bytes32 loc) external returns (bytes32 val);
    // Signs the digest using the private key sk.
    // Note that signatures produced via hevm.sign will leak the private key.
    function sign(uint sk, bytes32 digest)
        external returns (uint8 v, bytes32 r, bytes32 s);
    // Derives an ethereum address from the private key sk.
    // Note that hevm.addr(0) will fail with BadCheatCode as
    // 0 is an invalid ECDSA private key.
    function addr(uint sk) external returns (address addr);
    // Executes the arguments as a command in the system shell and returns stdout.
    // --ffi flag is required
    function ffi(string[] calldata) external returns (bytes memory);
}

