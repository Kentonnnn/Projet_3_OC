//
//  Team.swift
//  OCP"
//
//  Created by Nelson Pires Da Silva on 1/20/23.
//

import Foundation

class Team {
    var name: String
    var characters = [Character]()
    
    init(name: String) {
        self.name = name
    }
    
    // Function for show characters in team with descriptions
    func showCharacters() {
        print("""
              
----------------------------------------------------------
              
                    🧑‍🤝‍🧑 Team \(name) :
              
""")
        
        for character in characters {
            character.characterDescription()
        }
        
        print("""
            
----------------------------------------------------------
""")
    }
    
    // Character dead
    func characterIsDead() -> Bool {
        characters.allSatisfy {
            currentCharacter in currentCharacter.lifePoint == 0
        }
    }
}
