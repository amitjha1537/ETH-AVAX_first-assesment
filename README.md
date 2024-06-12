# Project Title

UPSCEligibility Smart Contract

## Contract Details 

- **Language**: Solidity
- **Compiler Version**: 0.8.18
- **License**: MIT

## Functions
### setApplicantDetails(uint _age, bool _isGraduate)
This function allows setting the applicant's age and graduation status.
- Parameters:
  - `_age`: The age of the applicant.
  - `_isGraduate`: A boolean indicating whether the applicant is a graduate (true) or not (false).



### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension.
Copy and paste the following code into the file:
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


## Usage

1. Deploy the UPSCEligibility contract on an Ethereum-compatible blockchain network.
2. Call the setApplicantDetails function to set the applicant's age and graduation status.
3. Call any of the test functions (testAssert, testRequire, testRevert) to check eligibility based on the conditions specified in the contract.



## Authors

Name: Amit Kumar Jha

MailId: amitjhaaj214@gmail.com


## License
This project is licensed under the MIT License - see the LICENSE.md file for details
