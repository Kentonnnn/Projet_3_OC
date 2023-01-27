import Foundation

class Warrior: Character {
    init(name: String) {
        super.init(characterType: "Warrior", name: name, lifePoint: 50, weapons: Sword())
    }
}
