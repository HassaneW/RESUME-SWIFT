import UIKit

var str = "Hello, playground"

// Guard : Garde une valeur sur toute une fonction (pas uniquement dans la boucle utilisé)

func test(str: String?) {
    
    guard str == "S" else { return }
    
    print("Je ne suis pas nil")
    
}

test(str: nil)
test(str: "S")

// Tuple : « Les tuples sont un type de variable particulier. En effet, un tuple contient plusieurs valeurs. »

let (nom, age, vivant) = ("Swift", 11, true)

print(nom)    // Swift
print(age)    // 11
print(vivant) // true

let tuple = ("Swift", 11, true)

let e1 = tuple.0
let e2 = tuple.1
let e3 = tuple.2


// Condition ternaire :

let note = 12
var moyenne: Bool

//A : Cette partie
if note < 10 {
    moyenne = false
} else {
    moyenne = true
}

// B : Est identique à cette partie
moyenne = note < 10 ? false : true

// C : Cette partie

var iLoveCodabee = false

if iLoveCodabee {
    
    print("J'aime Codabee")
    
}   else    {
    
    print("Je n'aime plus Codabee")
}

// D : Cette partie

iLoveCodabee = true

iLoveCodabee ? print("J'aime Codabee") : print("Je n'aime pas Codabee")


// E :

var nombre = 4

if nombre != 5  {
    print("Bon")
}   else    {
    print("Pas Bon")
}

// Conversion en ternaire

nombre == 4 ? print("OK"): print("Pas bon")

// Range

/*
Plage fermée : 1...5. La valeur de droite (5)  sera incluse dans la plage. La répétition de la boucle ne se fera pas au-delà de la valeur de 5
Plage semi-ouverte : 1..<5. la valeur de droite (5) n'est pas incluse dans la plage. La boucle s'arrêtera avant la limite de 5
*/
