import UIKit

var str = "Hello, playground"

// Operateur Numérique

var nombre1 = 9
var nombre2 = 3

// Additionner
print(nombre1 + nombre2)

// Soustraire
print(nombre1 - nombre2)

// Diviser
print(nombre1 / nombre2)

// Multiplier
print(nombre1 * nombre2)

// Modulo
print(nombre1 % nombre2)

// Calculer 2 valeurs de types différents (Int, Double)

var nombre3 = 10.8
var nombre4 = 19

// Int en Double
print(nombre3 + Double(nombre4))

// Double en Int
print(Int(nombre3) + nombre4)

// Operateur Logique

// Egal
var nombre5 = 10
var nombre6 = 10

if nombre5 == nombre6 { print("OK") }

// Différent de
var nombre7 = 12
var nombre8 = 19

if nombre7 != nombre8 { print(("OK"))}

// Supérieur ou egal
if nombre8 > nombre7    { print(("OK"))};
if nombre8 >= nombre7    { print(("OK"))}

// Inférieur
if nombre7 < nombre8    { print(("OK"))}
if nombre7 <= nombre8    { print(("OK"))}

// Operateur ! à placer devant la variable pour dire l'inverse
var codabee = false

if !codabee { print("OK")}

// Operateur ET &&
let age: Int = 32
let nationalite: String = "USA"

if age >= 21 && nationalite == "USA" {
    print("Vous êtes Américain et en plus vous êtes majeur.")
}

// Opérateur OU ||
let age1: Int = 20
let nationalite1: String = "FR"

if (age1 >= 21 && nationalite1 == "USA") || (age1 >= 18 && nationalite1 == "FR") {
    print("Vous êtes majeur.")
}
