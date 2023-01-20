import Foundation

// Create a character class, who has 3 property (lifePoint, weapon, name)
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
    
    // TODO: Description of character
    func characterDescription() {
        // TODO: print
        print(" " + characterType + " " + name + " : Life : \(lifePoint) - " + weapons.weaponName + " (Damage : \(weapons.weaponDamage) dmg)")
    }
    
    // TODO: Attack enemy
    func attack(characterAttack: Character) {
        characterAttack.lifePoint -= weapons.weaponDamage
        characterAttack.checkLifeCharacter()
    }
    
    // TODO: Check the life of the character
    func checkLifeCharacter() {
        if self.lifePoint <= 0 {
            self.lifePoint = 0
            print("\(characterType) \(self.name) is dead.")
        } else {
            print("\(name) as now \(lifePoint) health points.")
        }
    }
}
