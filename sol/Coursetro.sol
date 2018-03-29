pragma solidity ^0.4.18;

contract Coursetro {
    
    string fName;
    uint age;
    address owner;
    
    // a function with the name of the smart Contract is constructor
    function Coursetro() public {     // Add this constructor
        owner = msg.sender;
    }
   
    // place the modifier to a function. For instance see function setInstructor
    modifier onlyOwner {
        // check if the following condition is true
        // ig it is true, then run the function body --> initialized by _;
        // if the condition is not ture, then an exception will be thrown
        require(msg.sender == owner);
        _;
    }
   
    event Instructor(
        string name,
        uint age
    );
   
    function setInstructor(string _fName, uint _age) onlyOwner public {
        fName = _fName;
        age = _age;
        Instructor(_fName, _age);
    }
   
    function getInstructor() public constant returns (string, uint) {
        return (fName, age);
    }
    
}

