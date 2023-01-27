//
//  TeamCreation.swift
//  OCP
//
//  Created by Nelson Pires Da Silva on 1/6/23.
//

import Foundation

class TeamCreation {
    var characters = [Character]()
    var charactersName = [String]()
    var teams = [Team]()
    var teamsName = ""
    
    
    // TODO: Create two teams
    func createTeams() {
        for t in 0..<2 {
            print("Player \(t + 1)")
            if let team = createTeam() {
                teams.append(team)
                team.showCharacters()
            }
        }
    }
    
    // TODO: Create team
    func createTeam() -> Team? {
        let team = Team(name: uniqueName(teamsName: true))
        if let characters = createCharacters() {
            team.characters = characters
        }
        return team
    }
    
    // TODO: Create team name
    func createPlayerName() {
        teamsName = uniqueName(teamsName: true)
    }
    
    // TODO: check and add unique name
    func uniqueName(teamsName: Bool) -> String {
        var characterName = ""
        repeat {
            if teamsName {
                print("Enter your team's name :")
            } else {
                print("\n Enter the name of your character: ")
            }
            if let data = readLine() {
                characterName = data
                if charactersName.contains(characterName) {
                    print("\n This name is already used.")
                    characterName = ""
                } else {
                    charactersName.append(characterName)
                }
            }
        }
        while characterName == ""
                return characterName
    }
    
    // TODO: Create 3 characters
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
        print("""
        ////////////////////////////////////////
        Add 3 characters in your team :
        1. Warrior:    Life: 50    /  Damage: 25
        2. Magus:      Life: 25    /  Heal: 10
        3. Colossus:   Life: 25    /  Damage: 8
        ////////////////////////////////////////
""")
    }
    
    func createCharacter() -> Character? {
        displayMenuOfCharacters()
        
        let userChoice = readLine()
        let uniqueName = self.uniqueName(teamsName: false)
        
        switch userChoice {
        case "1":
            let warrior = Warrior(name: uniqueName)
            print("\n The warrior with name \(warrior.name) is add.")
            return Warrior(name: uniqueName)
            
        case "2":
            let magus = Magus(name: uniqueName)
            print("\n The magus with name \(magus.name) is add.")
            return Magus(name: uniqueName)
            
        case "3":
            let colossus = Colossus(name: uniqueName)
            print("\n The colossus with name \(colossus.name) is add.")
            return Colossus(name: uniqueName)
            
        default:
            return nil
        }
        
    }
}
