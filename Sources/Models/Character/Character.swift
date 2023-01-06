import Foundation

// Create a character class, who has 3 property (lifePoint, weapon, name)
class Character {
    let characterType: String
    let lifePoint: Int
    let weapon: Weapon
    let name: String
    
    init(characterType: String, lifePoint: Int, weapon: Weapon, name: String) {
        self.characterType = characterType
        self.lifePoint  = lifePoint
        self.weapon     = weapon
        self.name       = name
    }
}
