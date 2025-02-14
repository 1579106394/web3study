// SPDX-License-Identifier: MIT
// ↑ 指定开源协议

// ↓ 指定编译器版本
pragma solidity ^0.8.20;

contract HelloWorld {
    bool boolVar_1 = true;
    bool boolVar_2 = false;

    // 无符号整型
    uint8 unitVal = 255;
    int intVal = -1;

    // 字符串
    bytes32 bytesVal = "HelloWorld";
    string strVal = "HelloWorld";

    // 地址类型，存储合约地址、钱包地址等，不需要双引号
    address addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}