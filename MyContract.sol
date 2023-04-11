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

    uint256 openingTime = 1681170000;

    modifier onlyWhileOpen() {
        require(block.timestamp >= openingTime);
            _;
    }

    constructor() {
        state = State.Waiting;
    }

    function activate() public returns (string memory) {
        state = State.Active;
        return "Activation successful!";
    }

    function isActive() public view returns (bool) {
        return state == State.Active;
    }

    struct Person {
        uint256 _id;
        string _firstName;
        string _lastName;
    }

    // Person[] public people;
    uint256 public peopleCount = 0;

    //use mapping instead
    mapping(uint256 => Person) public people;

    function addPerson(
        string memory _firstName, 
        string memory _lastName
        )
        public onlyWhileOpen
    {
        // people.push(Person(_firstName, _lastName));
        peopleCount += 1;
        people[peopleCount] = Person(peopleCount, _firstName, _lastName);

        // now we can access based on id instead of index

        msg.
    }
}
