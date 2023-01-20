import Foundation

class Magus: Character {
    init(name: String) {
        super.init(characterType: "Magus", name: name, lifePoint: 50, weapons: MagicWand())
    }
}
