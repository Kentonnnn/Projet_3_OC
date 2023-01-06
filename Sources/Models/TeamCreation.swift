//
//  TeamCreation.swift
//  OCP
//
//  Created by Nelson Pires Da Silva on 1/6/23.
//

import Foundation

class TeamCreation {
    var characters = [Character]()
    
    func createCharacter() -> [Character]? {
        var characters = [Character]()
        for _ in 0..<3 {
            if let character = createCharacter(){
                characters.append(character)
            }
        }
    }
    
    func teamCreation() {
        if let characters = createCharacter(){
            self.characters = characters
        }
    }
    
    func createTeam() -> Character {
        let playerChoice = 0
        
        while playerChoice != 1 && playerChoice != 2 && playerChoice != 3 {
            
            switch playerChoice {
            case 1:
                let warrior = Warrior(name: "Warrior")
                print("The warrior was add to your team.")
                
            case 2:
                let magus = Magus(name: "Magus")
                print("The magus was add to your team.")
                
            case 3:
                let colossus = Colossus(name: "Colossus")
                print("The colossus was add to your team.")
                
            default:
                print("Error")
            }
        }
    }
}
