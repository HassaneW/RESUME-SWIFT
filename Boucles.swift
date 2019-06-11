import UIKit

var str = "Hello, playground"

// Conditions IF

var iLoveCodabee = false

if !iLoveCodabee {
    
    print("J'aime Codabee")
    
}   else    {
    
    print("Je n'aime plus Codabee")
}

// Condition IF..Else If et Else; La vriable s'arrête à la 1ére condition valider

var age = 18

if age > 20 {
    
    print("Vas Bosser")
    
} else if age > 14  {
    
    print("Au lycée")
    
} else if age > 10  {
    
    print("Au collége")
    
} else  { age > 10

print("On est bien on enfance")

}

// 2émé exemple

var prenom = "Jack"

if prenom == "Jo"   {
    print("Jo")
    
}   else if prenom == "Jack"    {
    print("C'est moi !")
    
}   else {
    print("On se connait ?")
}

//Boucle Switch

switch age {
case 20: print(20)
case 18: print("Majeur")
default: print("Aucun")
}

// BOUCLES (CODE QUI EST APPELE PLUSIEURS FOIS) "FOR" permet de parcourir une collection (tableau, dictionnaire, set).


// 1) Parcourir un tableau

var entiers = [1, 3, 8, 87, 23]


for elements // Création d'une variable qui prendra la valeur de chaque élément parcourus de la collection

    in entiers {// Objet de la collection parcourus

print(elements) // Affichage de chaque éléments du tableau

}

// 2) Parcourir un dictionnaire

var dictionnaire = ["Quentin": 3, "Vincent": 6, "Nicolas": 47]

for  (personne, valeur) in dictionnaire {
    
    print("Le numéro de \(personne) est : \(valeur)")
}

// Savoir si une valeur est bien dans le dictionnaire

for  (personne, _) in dictionnaire { // quand on utilise pas une des valeurs entres parenthéses, on peut la remplacer par underscore
    
    print(" \(personne) est bien dans le dictionnaire")
}

// 3) Boucle For avec une gamme de nombre

for index in 1...10 {
    print(index)
}

for index in 1..<10 {
    print(index)
}

// Autre maniére de Parcourir un tableau

for index in 0..<entiers.count {
    print(entiers[index])
}

//Incrémenter un tableau en parcourant chaque valeur

var nombre = 0

for _ in 0...10 { // Le underscore indique à Swift qu'on a pas besoin de recupérer la valeur puisqu'elle n'est pas utilisé
    print(nombre)
    nombre += 1
}

// Prendre 1 éléments sur 2 dans un tableau

var entiers2 = [1, 3, 9, 34, 67, 98, 76]

for index in stride(from: 0, to: entiers2.count, by: 2) {
    print(entiers2[index])
}

// Stride avec "through" : Créer une valeur d'un ensemble de nombre. Exemple 2 par 2 jusqu'à 20

for index in stride(from: 0, through: 20, by: 2) {
    print(index)
}

// Stride quand on remplace through par to, la derniére valeur n'est pas incluse. Exemple ça s'arrête à 18

for index in stride(from: 0, to: 20, by: 2) {
    print(index)
}

// Exemple For

for x in (1...10) {
    print(x)
}

// Boucle WHILE fait d'abord la verification avant de s'éxecuter
var x = 0

while x < 9 {
    print("Je ne suis pas à 9: \(x)")
    x += 1
}

// Exemple Boucle while

var ville = ["Paris", "Londres", "Sidney", "Manchester", "Toulouse", "Las Vegas"]

var index = 0

var villeRechercher = "Londres"

while villeRechercher != ville[index] { // Toujours vérifier que cette condition est vrai sinon boucle infini
    index += 1
}
print(index)
print(ville[index])

// Si élément rechercher n'est pas dans le tableau, limiter la recherche aux nombres d'éléments du tableau afin d'évier une boucle infini

villeRechercher = "Moscou"

while (villeRechercher != ville[index]) && (index < ville.count-1)  {
    index += 1
}

print(index)
print(ville[index]) // On s'arrête au dernier élément du tableau

// Boucle Repeat While, fait une 1ére boucle automatiquement,que lacondition soit rempli ou non


var age2 = 25


repeat  {
    
    print("J'ai \(age2) ans et je fête mon anniversaire")
    age2 += 1
}   while age <= 18

// Mots clefs continue permet dans une boucle de passer au tour suivant tandis que le mot clef Break arrête le code

let nombre2 = [1, 2, 3, 4, 5, 6, 7, 8, 9]

for n in nombre2 {
    
    if n%2 == 0 {
    print(n)
        continue // On passe directecment à l'élément suivant
    }
}

// Break dans default termine le bloc switch sans effectuer aucune action

for n in nombre2 {
    
    if n == 5 {
        print(n)
        break// Une fois que n = 5, on arrête la boucle entiére
    }
}

//Falltrough : Si on veut que toutes les conditions soient testés,

var age3 = 45

switch age3 {
case 21...100:
    print("TU ES MAJEUR AUX USA")
    fallthrough
case 18...100:
    print("Tues majeur en France")
    fallthrough
case 40...100:
    print("Attention vous n'êtes plus trés jeune")
default:
    break
}

switch age3 {
case 21...100:
    print("TU ES MAJEUR AUX USA")
    fallthrough
// case let x : Fallthrough ne peux être utiliser lors de la création de variable (exemple précedent)
 //   print("Tues majeur en France")
//    fallthrough
case 40...100:
    print("Attention vous n'êtes plus trés jeune")
default:
    break
}

