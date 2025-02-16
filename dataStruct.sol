// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract HelloWorld {
    string strVal = "Hello World";
    // 结构体，与class差不多
    struct Info {
        string phrase;
        uint256 id;
        address addr;
    }
    
    // 声明数组
    Info[] infos;

    // key是int，值是info
    // 可以简写mapping(uint256 => Info) infoMapping
    mapping(uint256 id => Info info) infoMapping;

    function sayHello(uint256 _id) public view returns(string memory) {
        for(uint256 i = 0; i < infos.length; i++) {
            Info memory info = infos[i];
            if(info.id == _id) {
                return addinfo(info.phrase);
            }
        }
        return addinfo(strVal);
    }

    function setHelloWorld(string memory news, uint256 _id) public {
        // 结构类型一定要指定存储格式
        // msg是全局环境变量，msg.sender可以获取发送者地址
        Info memory info = Info(news, _id, msg.sender);
        infos.push(info);
    }

    function sayHelloMapping(uint256 _id) public view returns(string memory) {
        // solidity判空不好判断，可以从结构体里找个明显是空的字段
        // address(0x0)是空地址
        Info memory info = infoMapping[_id];
        if(info.addr != address(0x0)) {
            return info.phrase;
        }
        return addinfo(strVal);
    }
    function setHelloWorldMapping(string memory news, uint256 _id) public {
        Info memory info = Info(news, _id, msg.sender);
        infoMapping[_id] = info;
    }

    function addinfo(string memory helloWorldStr) internal pure returns(string memory) {
        return string.concat(helloWorldStr, " from Frank's contract.");
    }

}