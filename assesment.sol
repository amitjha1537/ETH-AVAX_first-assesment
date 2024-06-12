// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "hardhat/console.sol";

contract UPSCEligibility {
    uint public age;
    bool public isGraduate;

    function setApplicantDetails(uint _age, bool _isGraduate) public {
        age = _age;
        isGraduate = _isGraduate;
    }

    // Function to test eligibility using assert
    function testAssert() public view {
        assert(age >= 21 && age <= 35 && isGraduate);
        console.log("Congratulations! You are eligible to sit in the UPSC exam.");
    }

    // Function to test eligibility using require
    function testRequire() public view {
        require(age >= 21 && age <= 35 && isGraduate, "To sit in the UPSC exam, you must be between 21 and 35 years old and a graduate");
        console.log("Congratulations! You are eligible to sit in the UPSC exam.");
    }

    // Function to test eligibility using revert
    function testRevert() public view {
        if (!(age >= 21 && age <= 35 && isGraduate)) {
            revert("To sit in the UPSC exam, you must be between 21 and 35 years old and a graduate");
        } else {
            console.log("Congratulations! You are eligible to sit in the UPSC exam.");
        }
    }
}
