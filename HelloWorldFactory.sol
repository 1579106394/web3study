// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
// 导入这个文件中所有的合约 import "./dataStruct.sol";
// 只引入指定文件里指定的合约
import {HelloWorld} from "./dataStruct.sol";
// github 引入合约
// import {AutomationBase} from "https://github.com/smartcontractkit/chainlink/blob/develop/contracts/src/v0.8/automation/AutomationBase.sol";

contract HelloWorldFactory {
    HelloWorld hw;
    HelloWorld[] hws;
    function createHelloWorld() public {
        // 合约就相当于是类，所以可以new对象
        hw = new HelloWorld();
        hws.push(hw);
    }
    function getHelloWorldByIndex(uint256 _index) public view returns(HelloWorld) {
        return hws[_index];
    }
    function callSayHelloFactory(uint256 _index, uint256 _id) 
        public 
        view 
        returns(string memory) {
        return hws[_index].sayHello(_id);
    }

    function callSetHelloWorldFromFactory(uint _index, string memory news, uint256 _id) public {
        hws[_index].setHelloWorld(news, _id);
    }
}