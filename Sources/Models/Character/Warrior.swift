import Foundation

class Warrior: Character {
    init(name: String) {
        super.init(characterType: "Warrior", name: name, lifePoint: 70, weapons: Sword())
    }
}
