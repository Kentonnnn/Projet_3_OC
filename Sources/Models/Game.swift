import Foundation

// Create a game class, with two players
class Game {
    
    let createTeam = TeamCreation()
    var numberOfTurn = 0
    
    func startGame() {
        // TODO: Presentation of the game
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
            print("1. Start new game !")
            startNewGame()
            
        case "2":
            print("2. Exit game.")
            exit(0)
            
        default:
            print("Invalid choice.")
        }
    }
    
    // TODO: resum characters in team before the fight
    func resumTeams() {
        teamOne()
        teamTwo()
        print("\n Here are the teams that will fight.")
    }
    
    // TODO: Team One
    func teamOne() {
        createTeam.teams[0].showCharacters()
    }
    
    // TODO: Team two
    func teamTwo() {
        createTeam.teams[1].showCharacters()
    }
    
    func startNewGame() {
        createTeam.createTeams()
        resumTeams()
        battleLoop()
    }
    
    // TODO: Choose a character in team for fight
    func playerChoose() -> Character {
        var characterPlay: Character?
        while characterPlay == nil {
            if let userChoice = readLine(){
                
                switch userChoice {
                
                case "1":
                    characterPlay = createTeam.teams[0].characters[0]
                    
                case "2":
                    characterPlay = createTeam.teams[0].characters[1]
                    
                case "3":
                    characterPlay = createTeam.teams[0].characters[2]
                    
                default: break
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
    
    // TODO: Battle loop
    func battleLoop() {
        print("\n Let the battle begin !")
        repeat {
            teamOne()
            print("\n Choose a character in your team by typing : 1, 2, 3")
            let myCharacter = playerChoose()

            if let magus = myCharacter as? Magus {
                teamOne()
                print("\n Choose the ally to care for by typing : 1, 2, 3")
                let characterHeal = playerChoose()
                magus.heal(characterHeal: characterHeal)
                changeTeams()

            } else {
                teamTwo()
                print("\n Choose the enemy by typing : 1, 2, 3")
                changeTeams()
                let characterAttack = playerChoose()
                myCharacter.attack(characterAttack: characterAttack)
                numberOfTurn += 1
                print("\n number of turns : \(numberOfTurn)")
            }
        } while endGame()
    }
        
        
    // TODO: Function for end the game when all enemies are dead
        func endGame() -> Bool {
            let teamDead = false
            
            for i in 0..<createTeam.teams.count {
                let teamOne = createTeam.teams[i]
                let teamTwo = createTeam.teams[i + 1]
                
                if teamOne.characterIsDead() {
                    print("\n Congratulation team \(teamTwo) you are the winner !")
                    stats()
                    startGame()
                    return teamDead == true
                } else if teamTwo.characterIsDead() {
                    print("\n Congratulation team \(teamOne) you are the winner !")
                    stats()
                    startGame()
                    return teamDead == true
                } else {
                    return teamDead == false
                }
            }
            return teamDead
        }
    
    // TODO: Stats turn number
    func stats() {
        print("\n - Game statistics -")
        print("\n Number of turns total : \(numberOfTurn)")
        print("""
            Here is a summary of the teams :

            \(teamOne())
            \(teamTwo())

            End of the game, back to the main menu.
""")
    }
}

