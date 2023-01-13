import Foundation

// Create a game class, with two players
class Game {
    
    let createTeam = TeamCreation()
    
    func startGame() {
        displayMainMenu()
    }
    
    
    func displayMainMenu() {
        
        print("\n /////////////////////////////////////////////"
                    + "\n Welcome to the combat game !"
                    + "\n1. Start new game !"
                    + "\n2. Exit game."
                    + "\n /////////////////////////////////////////////")
        
        let menuChoice = readLine()
        
        switch menuChoice {
            
        case "1":
            print("1. Start new game !")
            createTeam.teamCreations()
            let newGame = Game()
            newGame.startGame()
            
        case "2":
            print("2. Exit game.")
            exit(0)
            
        default:
            print("Invalid choice.")
        }
    }
        
}
    
