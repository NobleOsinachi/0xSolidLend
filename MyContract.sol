// SPDX-License-Identifier: MIT
pragma solidity >0.4.24;

/**
   * @title MyContract
   * @dev This is a Solidity smart contract written in the Ethereum blockchain programming language. It is named "MyContract" and contains two functions, "set" and "get", which allow a user to set and retrieve a string value, respectively. The contract is licensed under the MIT License and includes a custom development script that can be run with the command "dev-run-script file_path". When the contract is deployed, the initial value of the string is set to "default value".
   * @custom:dev-run-script file_path
   */
contract MyContract {
    string value;
    constructor(){
        value = "default value";
    }


    function set(string memory _value) public {
        value = _value;
    }

    function get() public view returns (string memory) {
        return value;
    }
}
