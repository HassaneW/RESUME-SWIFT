import UIKit
import Foundation




// La struc est un type de valeur tandis que la classe est un type de référence.
// La struct n' a pas d'héritage
// On ne peut pas rendre les variables privés. Le structure est trés utile pour le json

struct PointGeoloc {
    
    var latitude : Double
    var longitude : Double
    var adresse : String
    var nom : String
    
    func aller() {
        print("Je vais la bas")
        
    }
}

let newP = PointGeoloc(latitude: 12.8, longitude: 21.9, adresse: "22, rue du loup", nom: "Starbucks")

newP.aller()

// Les structures nous permettent de ranger les données. On rajoute les valeurs une fois qu'on a construit la structure.

//Exemple Point

struct Point {
    var x : Double
    var y : Double
}

var firsPoint = Point(x: 23.9, y: 12.9)
print("Coordonnée X : \(firsPoint.x)")

// Exemple avec une vidéo

struct Video {
    var longueur : Float
    var hauteur : Int
    var largeur : Int
    
    let titre : String
    let auteur : String
    
}

var shoot01 = Video(longueur: 12.9, hauteur: 100, largeur: 32, titre: "Prise de vue", auteur: "Hassane")

// Si on crée shoot02 et qu'on lui attribue les valeurs de shoot01

var shoot02 = shoot01

// Le fait de changer la valeur de shoot02 ne change pas les valeurs comprises dans shoot01. Contrairement au classe

shoot02.longueur = 23.9

shoot01.longueur


// Extension rajoute des méthodes et des attributs à une classe, structure et énumération. Il s'agit de structures de données d'un projet auxquelles nous n'avons pas accés ou que nous n'avons pas le droit de modifier.

// Le but d'une extension est d'augmenter les capacités d'une classe sans modifier ce qui est déjà présent.

// Avec les extensions on peut ajouter des attributs, des méthodes et des constructeurs.

extension Double {
    
    func convertirDoubleEnString() -> String {
        return String(format: "%.2f", self) // self représente le Double lui même.
    }
}

var monDouble: Double = Double.pi
print(monDouble)


// Nous avons créer une méthode qui appartient désormais à Double
print(monDouble.convertirDoubleEnString())

// Exemple : Extension qui convertit les valeurs en métres

extension Double {
    var km: Double { return self * 1000.0 }
    var m: Double { return self }
    var dm: Double { return self / 10.0 }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1000.0 }
    var pieds: Double { return self / 3.28084 }
}

let mesure = 85.7.mm

print("La valeur en métre est de \(mesure)")

let marathon = 197.67.km + 23.9.dm + 265.2.mm

print("La valeur du marathon en métre est de \(marathon)")

let mesurePieds = 5.pieds

print("La valeur de mesurePieds en métre est de \(mesurePieds)")

// Extension : Ajout d'un constructeur

struct Taille {
    var longueur = 0.0
    var largeur = 0.0
}

struct Point1 {
    var x = 0.0
    var y = 0.0
}

struct Rectangle {
    var origine = Point1()
    var taille = Taille()
}

let point2 = Point1(x: 12.8, y: 89.9)
let taille2 = Taille(longueur: 12.9, largeur: 5.9    )
let rectangle = Rectangle(origine: point2, taille: taille2)

// OU

extension Rectangle {
    init(long: Double, larg: Double, x: Double, y: Double) {
        self.init(origine: Point1(x: x, y: y), taille: Taille(longueur: long, largeur: larg))
    }
}

let rectangle1 = Rectangle(long: 12.1, larg: 76.9, x: 34.8, y: 76.9)

//Extension : Ajouter une méthode

extension Int {
    func cube() -> Int {
        return self * self * self
    }
}

var nombre: Int = 542
print(nombre.cube())
