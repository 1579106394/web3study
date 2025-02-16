// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract HelloFunction {
    string strVal = "Hello World";
    /**
     view：只能读变量，不能修改变量的值
     public：任何人都可以访问
     returns(string memory)：返回值类型是tring，memory后面说
     */
    function sayHello() public view returns(string memory) {
        return addinfo(strVal);
    }

    function setHelloWorld(string memory news) public {
        strVal = news;
    }

    function addinfo(string memory helloWorldStr) internal pure returns(string memory) {
        return string.concat(helloWorldStr, " from Frank's contract.");
    }

}