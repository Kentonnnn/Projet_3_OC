import Foundation

// Create a weapon class
class Weapon {
    
    let weaponName: String
    let weaponDamage: Int
    let weaponHeal: Int
    
    init(weaponName: String, weaponDamage: Int, weaponHeal: Int) {
        self.weaponName = weaponName
        self.weaponDamage = weaponDamage
        self.weaponHeal = weaponHeal
    }
}
