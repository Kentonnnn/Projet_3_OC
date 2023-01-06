import Foundation

// Create a game class, with two players
class Game {
    
    func startGame() {
        let teamCreation = TeamCreation()
        
        var exitGame = false
        
        while !exitGame {
            
            print("⚔️ WELCOME TO THE COMBAT GAME ⚔️")
            print("1. Start new game !")
            print("2. Exit game.")
            
            let menuChoice = readLine()
            
            switch menuChoice {
            case "1":
                print("You started a new game.")
                let newGame = Game()
                newGame.startGame()
                
            case "2":
                print("Bye, and hope to see you again")
                exit(0)
                
            default:
                print("Invalid choice.")
            }
        }
    }
}

