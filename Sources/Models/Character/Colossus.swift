import Foundation

class Colossus: Character {
    init(name: String) {
        super.init(characterType: "Colossus", name: name, lifePoint: 100, weapons: ShieldBlow())
    }
}
