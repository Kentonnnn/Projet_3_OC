import Foundation

// Create a character class, who has 3 property (lifePoint, weapon, name)
class Character {
    let lifePoint   = Int
    let weapon      = Weapon
    let name        = String
    
    init(lifePoint: Int, weapon: Weapon, name: String) {
        self.lifePoint  = lifePoint
        self.weapon     = weapon
        self.name       = name
    }
}
