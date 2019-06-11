import UIKit

var str = "Hello, playground"


// Creer type dictionnaire
var monuments : Dictionary<String, String>
var monDictionnaire2 = [Int : Bool]()

// Créer dictionnaire
monuments = ["Paris": "Tour Eiffel", "Londres": "Big Ben", "New York": "Central Park", "Moscou": "Kremlin"]

// Modifier la valeur d'un dictionnaire
monuments["Paris"] = "Arc de triomphe"

// Compter les clefs valeurs d'un dictionnaire
monuments.count

// Voir si un dictionnaire est vide ou non avec un Booléens
monuments.isEmpty

// Ajouter une clé, valeur dans un dictionnaire
monuments["Madrid"] = "Palais Royal"

// Modifier une valeur dans un dictionnire
monuments.updateValue("Hyde Park", forKey: "Londres")

print(monuments)

// Supprimer la valeur dans un dictionnaire
monuments.removeValue(forKey: "Moscou")

for (ville, monument) in monuments {
    print("Le monument le plus connu de \(ville) est : \(monument)")
}

// Effacer toutes les valeurs d'un dictionnaire
monuments = [:]


// Créer un dictionnaire
var famille: [String: Any] = [

    "papa": 58,
    "Maman": 50,
    "fils": 30,
    "fille": 21,
    "Alien": [23, 34, 2]
    
]

// Ajouter des éléments dans un dictionnaire
famille["chat"] = 7
famille["chien"] = 9

// Effacer une clé, valeur dans un dictionnaire
famille.removeValue(forKey: "chien")

print(famille)

// Compter les éléments d'un dictionnaire
print(famille.count)

// Parcourir les éléments d'un dictionnaire
for (key, value) in famille {
    
    print("Salut je suis " + key + " et j'ai \(value) ans.")
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
