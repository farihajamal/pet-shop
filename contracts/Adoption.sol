pragma solidity ^0.5.16;

contract Adoption {
address[16] public adopters;

string public pageHeading;
constructor() public {
  pageHeading = "Fariha's Pet Shop";
}

// Adopting a pet
function adopt(uint petId) public returns (uint) {
  require(petId >= 0 && petId <= 15);

  adopters[petId] = msg.sender;

  return petId;
}
// Retrieving the adopters
function getAdopters() public view returns (address[16] memory) {
  return adopters;
}


// Retrieving the adopters
function getheading() public view returns (string memory) {
  return pageHeading;
}
}
