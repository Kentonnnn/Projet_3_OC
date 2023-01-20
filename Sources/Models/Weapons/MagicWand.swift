import Foundation

// Note : Rajouter un heal pour le mage
class MagicWand: Weapon {
    init() {
        super.init(weaponName: "Magic Wand", weaponDamage: 0, weaponHeal: 10)
    }
}
