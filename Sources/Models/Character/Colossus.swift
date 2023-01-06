import Foundation

class Colossus: Character {
    init(name: String) {
        super.init(characterType: "Colossus", lifePoint: 100, weapon: ShieldBlow(), name: name)
    }
}
