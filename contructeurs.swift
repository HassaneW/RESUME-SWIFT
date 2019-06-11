import UIKit
import Foundation

// Un Constructeur est une Méthode permettant de créer une instance de classe. Son But est de donner des valeurs à toutes les propriétés de notre classe

// Surcharge de méthode 1

struct Color {
    var red : Int
    var green : Int
    var blue : Int
    
    init(red: Int, green : Int, blue : Int) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white : Int) {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let maCouleur = Color(red: 1, green: 2, blue: 3)
let maCouleur2 = Color(white: 4)

// Surcharge de méthode 2 : Construire un cercle de 2 maniéres différentes avec 2 constructeurs (avec 2 points et avec un point et un rayon)

struct Point {
    var x: Double
    var y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}



class Cercle {
    var center : Point
    var rayon : Double
    
    init(center c: Point, rayon r: Double) {
        rayon = r
        center = c
    }
    
    init(center c: Point, passionTo t: Point) {
        center = c
        rayon = sqrt(pow(t.x,2 + pow(t.y,2))) // RACINE CARRE DE X ET Y AU CARRE, calcul rayon d'un cercle
    }
}


var p1 = Point(x: 12.9, y: 35.6)
var p2 = Point(x: 23.9, y: 12.9)

var cercle1 = Cercle(center: p1, rayon: 12.9)
var cercle2 = Cercle(center: p1, passionTo: p2)// Rayon calculé automatiquement en fonction de p1 et p2

cercle2.rayon

// Constructeur avec des optionnels

class Driver {
    let name : String
    
    init(name: String) {
        self.name = name
    }
}

class Car {
    var driver : Driver? // Soit une voiture à un conducteur ou non
    var color : String
    
    init(color: String) {
        self.color = color
    }
    
    init(driver : Driver, color : String) {
        self.color = color
        self.driver = driver
    }
}


