import Foundation

class Character {
    let characterType: String
    let name: String
    var lifePoint: Int
    var weapons: Weapon
    
    init(characterType: String, name: String, lifePoint: Int, weapons: Weapon) {
        self.characterType = characterType
        self.name = name
        self.lifePoint = lifePoint
        self.weapons = weapons
    }
    
    // Description of character
    func characterDescription() {
        // TODO: print
        print(" " + characterType + " " + name + " : Life : \(lifePoint) - " + weapons.weaponName + " (Damage : \(weapons.weaponDamage)) - " + "(Heal : \(weapons.weaponHeal)) " )
    }
    
    // Attack enemy
    func attack(characterAttack: Character) {
        characterAttack.lifePoint -= weapons.weaponDamage
        characterAttack.checkLifeCharacter()
    }
    
    // Check the life of the character
    func checkLifeCharacter() {
        if self.lifePoint <= 0 {
            self.lifePoint = 0
            print("\n \(characterType) \(self.name) is dead.")
        } else {
            print("\n \(name) as now \(lifePoint) health points.")
        }
    }
}
