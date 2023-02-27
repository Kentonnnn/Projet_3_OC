import Foundation

// Create a game class, with two players
class Game {
    
    private let createTeam = TeamCreation()
    private var numberOfTurn = 0
    
    func startGame() {
        displayMainMenu()
        battleLoop()
    }
    
    func displayMainMenu() {
        print("""

        ////////////////////////////

        Welcome to the combat game !

        1. Start new game !
        2. Exit game

        ////////////////////////////

""")
        
        let menuChoice = readLine()
        
        switch menuChoice {
            
        case "1":
            print("\n 1. Start new game !")
            startNewGame()
            
        case "2":
            print("\n 2. Exit game.")
            exit(0)
            
        default:
            print("\n Invalid choice.")
            startGame()
        }
    }
    
    // Resum characters in team before the fight
    func resumTeams() {
        print("""
            
        
        Here is a summary of the two teams before the confrontation :
              
        """)
        
        teamOne()
        teamTwo()
    }
    

    func teamOne() {
        createTeam.teams[0].showCharacters()
    }
    

    func teamTwo() {
        createTeam.teams[1].showCharacters()
    }
    
    func startNewGame() {
        createTeam.createTeams()
        resumTeams()
        battleLoop()
    }
    
    // Choose a character in team for fight
    func playerChoose(message: String) -> Character {
        var characterPlay: Character?
        
        while characterPlay == nil {
            print("\n \(message)")
            
            if let userChoice = readLine() {
                
                switch userChoice {
                    
                case "1":
                    characterPlay = createTeam.teams[0].characters[0]
                    
                case "2":
                    characterPlay = createTeam.teams[0].characters[1]
                    
                case "3":
                    characterPlay = createTeam.teams[0].characters[2]
                    
                default:
                    print("\n 🛑 Invalid selection, please enter a valid character number.")
                }
                
                if let chooseCharacter = characterPlay {
                    if chooseCharacter.lifePoint <= 0 {
                        print("\n Your character is dead.")
                        characterPlay = nil
                    }
                }
            }
        }
        return characterPlay!
    }
    

    func changeTeams() {
        createTeam.teams.swapAt(0, 1)
    }
    
    // Battle loop
    func battleLoop() {
        print("\n ⚔️ Let the battle begin ! ⚔️")
        repeat {
            teamOne()
            let myCharacter = playerChoose(message: "Choose a character in your team by typing : 1, 2, 3")

            if let magus = myCharacter as? Magus {
                teamOne()
                let characterHeal = playerChoose(message: "Choose the ally to care for by typing : 1, 2, 3")
                magus.heal(characterHeal: characterHeal)
                changeTeams()

            } else {
                teamTwo()
                changeTeams()
                let characterAttack = playerChoose(message: "\n Choose the enemy by typing : 1, 2, 3")
                myCharacter.attack(characterAttack: characterAttack)
                numberOfTurn += 1
                print("\n number of turns : \(numberOfTurn)")
            }
        } while endGame()
    }
        
        
    // Function for end the game when all enemies are dead
        func endGame() -> Bool {
            let teamDead = false
            
            for i in 0..<createTeam.teams.count {
                let teamOne = createTeam.teams[i]
                let teamTwo = createTeam.teams[i + 1]
                
                if teamOne.characterIsDead() {
                    messageWinner(teamsName: teamTwo.name)
                    stats()
                    exitGame()
                    return teamDead == true
                } else if teamTwo.characterIsDead() {
                    messageWinner(teamsName: teamOne.name)
                    stats()
                    exitGame()
                    return teamDead == true
                } else {
                    return teamDead == false
                }
            }
            return teamDead
        }
    
    // Message Winner
    func messageWinner(teamsName: String) {
        print("\n Congratulation team \(teamsName) you are the winner 🏆")
    }
    
    // Stats turn number
    func stats() {
        print("""

              ////////////////////
              - Game statistics -
              ///////////////////
""")
        print("\n ⏳ Number of turns total : \(numberOfTurn)")
        print("""
            
            Here is the end summary of the teams 🧑‍🤝‍🧑 :
""")
        teamOne()
        teamTwo()
        
        print("""
            ➡️ End of the game, back to the main menu.
""")
    }
}

func exitGame() {
    exit(0)
}
