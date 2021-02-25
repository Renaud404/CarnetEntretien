// SPDX-License-Identifier: GPL-3.
pragma solidity ^0.7.4;

contract CarnetEntretien {
    
   Entretien[] listeEntretiens;
   //address[] public listeEntretiens;
   
   function creerEntretien(string memory _description) public {
      Entretien nouveauEntretien = new Entretien(_description, address(this));            
      listeEntretiens.push(nouveauEntretien);  
   }
   
   function voirLesEntretiens() public view returns(Entretien[] memory) {
      return listeEntretiens;
   }
}


contract Entretien {
    
   string description;
   address vehicule;

   constructor (string memory _description, address _adressevehicule) {
      description = _description;
      vehicule = _adressevehicule;
   }
   
   
   function voirladesc() public view returns(string memory) {
      return description;
   }
   
      function voirlevehicule() public view returns(address) {
      return vehicule;
   }
   
}