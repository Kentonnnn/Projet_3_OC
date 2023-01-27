import Foundation

class Magus: Character {
    init(name: String) {
        super.init(characterType: "Magus", name: name, lifePoint: 25, weapons: MagicWand())
    }
    
    // TODO:
    func heal(characterHeal: Character) {
        characterHeal.lifePoint += weapons.weaponHeal
    }
}
