import Foundation


// Create a player class, who has a team
class Player {
    var namePlayer : String
    var team: [Character] = []
    
    init(namePlayer: String) {
        self.namePlayer = namePlayer
    }
}
