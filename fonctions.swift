import UIKit

var str = "Hello, playground"

// Création fonction

func nomDeMaFonction(argument1 : Int, argument2: String) -> Bool   {
    
    for _ in 1...argument1 {
        
        print(argument2)
    }
    
    return true
}

nomDeMaFonction(argument1: 3, argument2: "Ca marche")

// Fonction simple

func sayHello() {
    print("Hello")
}
sayHello()


// Fonction avec argument

func sayHello1(name : String) {
    print("Hello \(name)")
}

sayHello1(name: "Hassane")

// Fonction avec retour

func sayHello2(name : String) -> String {
    
    var message: String
    message = "Hello \(name) ! "
    
    return message
}
sayHello2(name: "Moussa")


// Fontion avec 2 arguments

func power(base: Int, exposant : Int) -> Int  {
    
    if exposant == 0 {
        
        // Si condition valider fin de la fonction avec return sinon condition suivante
        return 1
        
    }
    
    var nombre = base
    for _ in 1..<exposant {
        nombre = nombre * base
    }
    
    return nombre
}

power(base: 3, exposant: 2)


// Retourner plusieurs valeurs avec une fonction, avec un tuple. Les tuples malgré des valeurs différentes sont considérés comme un seul objet

func decrirePoint(x: Double, y: Double) -> (xPositif: Bool, yPositif: Bool) {
    
    // Signe X et Y sont des variables qui ne sont connus que dans la fonction contrairement à Xpositif et Ypositif
    var signeX = false
    var signeY = false
    
    if x >= 0 { signeX = true }
    if y >= 0 { signeY = true }
    
    return (signeX, signeY)
}

decrirePoint(x: 23.7, y: 78.9)
decrirePoint(x: 23.8, y: 89.9).xPositif // POUR RECUPERER UNE SEULE DES 2 VALEURS (. suivi du nom de l'élément à recuperer


// Retourner un élément optionnelle : Exemple d'un tableau (On ne sait pas s'il est vide et dans ce cas il ne retourne pas de valeur max

func valeurMax(tab : [Int]) -> Int? {
    
    // 1ére chose tester si le tableau est vide
    
    if tab.isEmpty { return nil }
    
    
    // Retourne la valeur maximum d'un tableau
    
    var max = tab [0]
    for nombre in tab {
        if nombre > max {
            max = nombre
        }
    }
    return max
}

// test valeur max
var tableau = [12, 67, 89, -5, 8, 12, 99, 1]
valeurMax(tab: tableau)


// Enlever affichage Optionnal plus la valeur du tableau avec le point d'exclamation
print("La valeur max du tableau est : \(valeurMax(tab: tableau)!)")

// Toujours tester avant de unwrapp

if let valeurMax = valeurMax(tab: tableau) {
    
    print("La valeur max du tableau est : \(valeurMax)")
} else  {
    
    print("Le tableau n'a pas de max")
}

// test nil
tableau = []
valeurMax(tab: tableau)

// Changer la valeur d'un argument (avec le & en change les adresse des pointeurs)

func swap(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var a = 56
var b = 23
swap(&a, &b)

a
b


