// SPDX-License-Identifier: MIT
pragma solidity >0.5.1;

/**
 * @title MyContract
 * @dev This is a Solidity smart contract written in the Ethereum blockchain programming language. It is named "MyContract" and contains two functions, "set" and "get", which allow a user to set and retrieve a string value, respectively. The contract is licensed under the MIT License and includes a custom development script that can be run with the command "dev-run-script file_path". When the contract is deployed, the initial value of the string is set to "default value".
 * @custom:dev-run-script file_path
 */
contract MyContract {
    //works for get and set
    string public value = "my default value"; // value;
    string public stringValue = "my default value"; // value;
    bool public myBool = true;
    int256 age = -24;
    int256 temp =
        33333333333333333333333333333333333333333333333333333333333333333333333333332;

    //only get, use const
    // string public constant value = "my default value";// value;

    // constructor() {
    //     value = "my defaultValue";
    // }

    // function get() public view returns (string memory) {
    //     return value;
    // }

    // function set(string memory _value) public {
    //     value = _value;
    // }

    enum State {
        Waiting,
        Ready,
        Active,
        Inactive,
        Closed
    }

    State public state;

    constructor() {
        state = State.Waiting;
    }

    function activate() public returns (string memory) {
        state = State.Active;
        return "Activation successful!";
    }
    function isActive() public view returns (bool){
        return state==State.Active;
    }
}
