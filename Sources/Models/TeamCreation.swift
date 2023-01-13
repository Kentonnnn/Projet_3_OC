//
//  TeamCreation.swift
//  OCP
//
//  Created by Nelson Pires Da Silva on 1/6/23.
//

import Foundation

class TeamCreation {
    
    var teams = [Team]()
    
    func teamCreations() {
        for i in 0..<2 {
            print("\n Player \(i + 1)")
            if let team = teamCreation() {
                teams.append(team)
            }
        }
    }
    
    func teamCreation() -> Team? {
        let team = Team(name: "")
        if let characters = createCharacters() {
            team.characters = characters
        }
        
        return team
    }
    
    func createCharacters() -> [Character]? {
        var characters = [Character]()
        for _ in 0..<3 {
            if let character = createCharacter() {
                characters.append(character)
            }
        }
        
        return characters
    }
    
    func displayMenuOfCharacters() {
        print("\n /////////////////////////////////////////////"
                    + "\n Add 3 characters as your team :"
                    + "\n1. Warrior     - Life: 70      - Damage      : 20 dmg"
                    + "\n2. Magus       - Life: 50      - Heal        : 10 heal"
                    + "\n3. Colossus    - Life: 100     - Damage      :  8 dmg"
                    + "\n /////////////////////////////////////////////")
    }
    
    func createCharacter() -> Character? {
            var choiceUser = 0
            displayMenuOfCharacters()
        
        // J'ai trouvé ça sur internet mais besoin d'explication
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    choiceUser = dataToInt
                }
            }
        }
        
        while choiceUser != 1 && choiceUser != 2 && choiceUser != 3; do { // Pourquoi un do ici ? Car le switch juste après ?
            
            switch choiceUser {
                
            case 1:
                print("You add a Warrior to your team")
                
            case 2:
                print("You add a Magus to your team")
                
            case 3:
                print("You add a Colossus to your team")
                
            default:
                return nil
            }
        }
        return nil // Pourquoi je suis obligé de mettre un return ici ?
    }
    
}
