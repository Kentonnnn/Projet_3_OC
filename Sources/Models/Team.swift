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
    
    // TODO: Function for show characters in team with descriptions
    func showCharacters() {
        print("Team \(name) :")
        for character in characters {
            character.characterDescription()
        }
    }
    
    // TODO: Character dead
    func characterIsDead() -> Bool {
        var dead = false
        for character in characters {
            if character.lifePoint == 0 {
                dead = true
            } else {
                return false
            }
        }
        return dead
    }
}
