// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract HelloWorld {

    string public message;
    
    event UpdatedMessages(string oldMessage, string newMessage);

    constructor(string memory initMessage){
        
        message = initMessage;
    }

function update(string memory newMessage) public {
    
    message = newMessage;
}

function get () public view returns (string memory) {

    return string (message);
}  
}

