import Foundation

class Warrior: Character {
    init(name: String) {
        super.init(characterType: "Warrior", lifePoint: 70, weapon: Sword(), name: name)
    }
}
