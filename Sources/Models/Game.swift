import Foundation

// Create a game class, with two players
class Game {
    
    let playerOne: Player
    let playerTwo: Player
    
    init(playerOne: Player, playerTwo: Player) {
        self.playerOne = Player()
        self.playerTwo = Player()
    }
}
