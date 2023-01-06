import Foundation

class Magus: Character {
    init(name: String) {
        super.init(characterType: "Magus", lifePoint: 50, weapon: MagicWand(), name: name)
    }
}
