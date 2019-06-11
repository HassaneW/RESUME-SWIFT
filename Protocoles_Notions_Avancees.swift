import UIKit
import Foundation

// Un protocoles est un modéle que va suivre une classe. Certains fonctionnaités d'une classe ou de plusieurs classes vont être basé sur un patron particulier.

// Certains objets ont en effet des fonctionnalités qui peuvent être communes et dans ce cas il est plus judicieux de créer un modéle pour ces classes et donc : Un Protocole

// Dans un protocole on écrit uniquement les en tête des méthodes (donc des fonctionnalités), le corps des méthodes sera défini plus tard dans les classes qui posséderont comme modéle le protocole.

// Toute la structure de protocole sera dans un fichier à part tandis que son utilisation se passe dans le fichier contenant la classe qui va être associé au protocole. La classe doit implémenter toutes les fonctions présentes dans le protocole.

// Une classe peut être associé à plusieurs protocoles.

protocol ComposantElectrique {
    func brancher()
    func debrancher()
}

class Multiprise : ComposantElectrique {
    
    func brancher() {
        print("Je suis brancher")
    }
    
    func debrancher() {
        print("Je suis debrancher.")
    }
}

// MÉTHODES DE TYPE String : count, append(contentsof:), contains

var text: String = "Bonjour, Hassane"
text.count
text.append(contentsOf: " Ca va") // rajout texte
print(text)
text.contains("Ha") // Vérifie si la variable contient les lettres en argument

// Méthode de type Int : advanced(by:), distance(to:)

var chiffre = 5
chiffre.advanced(by: 10) // Rajoute le chiffre du nombre en argument
chiffre.distance(to: 100) // Affiche distance entre 2 chiffre

// MÉTHODE DE TABLEAU : Contains, savoir si un élément est dans un tableau

var tab: [String] = ["Romain", "Toto"]
print(tab.contains("Toto"))

// TUPLES : Est un type de variable qui peut contenir plusieurs valeurs

let erreur404 = (404, "Page introuvable")

// Récupérer et utiliser les valeurs

let (code, message) = erreur404

print("Erreur \(code) : " + message + ".")

// Récupere une seule donné du tuple avec underscore

let (code1, _) = erreur404
print("Code d'erreur \(code1)")

// Une autre façon d'accéder aux données avec les tuples et la numérotation automatique à partir de 0 comme les tableaux

let erreur405 = (405, "Page introuvable")
print("Erreur \(erreur405.0) : " + erreur405.1 + ".")

// Déclarer les valeurs de variables directement dans le tuple

let erreur406 = (code: 406, message: "Page introuvable")
print("Erreur \(erreur406.code) : " + erreur406.message + ".")

// Tester une optionnelle

var hassane : String = "hassane"

if hassane != nil {
    print("La variable n'est pas nulle.")
} else {
    print("La variable est nulle")
}












