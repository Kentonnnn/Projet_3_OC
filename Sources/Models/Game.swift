import Foundation

// Create a game class, with two players
class Game {
    
    let createTeam = TeamCreation()
    
    func startGame() {
        // TODO: Presentation of the game
        displayMainMenu()
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
        battle()
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
                        print("Your character is dead.")
                        characterPlay = nil
                    }
                }
            }
        }
        return characterPlay!
    }
    
    // TODO: Battle loop
    func battle() {
        print("\n Let the battle begin !")
        repeat {
            teamOne()
            print("Choose a character in your team by typing : 1, 2, 3")
            let myCharacter = playerChoose()
        }
        
        if let magus = myCharacter as? Magus {
            teamOne()
            print("Choose the ally to care for by typing : 1, 2, 3")
            let characterHeal = playerChoose()
            magus.Weapon.MagicWand(characterHeal: characterHeal)
            
        } else {
            teamTwo()
            print("Choose th enemy by typing : 1, 2, 3")
            let characterAttack = playerChoose()
            myCharacter.attack(characterAttack: characterAttack)
        }
    } while endGame()// TODO: function end game
        
        
    // TODO: Function for end the game when all enemies are dead
        func endGame() {
            <#function body#>
        }
}

