import UIKit

var str = "Hello, playground"

 
 // Tableau

// Créer un Tableau
 var monArray : [Int] = [1, 2, 3, 4, 5]
 
 print(monArray)

// Ajouter une séquence à un tableau
 monArray.append(contentsOf: [6, 7, 8, 9])
 print(monArray)

// Ajouter un élément à un tableau
 monArray.append(10)
 print(monArray)

// Effacer l'élément d'un tableau
 monArray.remove(at: 1)
 print(monArray)

 // Effacer le dernier élément d'un tableau
 monArray.removeLast()
 print(monArray)

// Effacer le 1er élément d'un tableau
 monArray.removeFirst()
 print(monArray)

// Effacer tous les éléments d'un tableaua
 monArray.removeAll()
 print(monArray)

// Créer un tableau Vide
 var tableau = [String]()
 
 var tableau2 = [3.12, 56.90, 89.98, 12.1, 78.3, 98.7]

// AJOUTER une séquence d'éléments à un tableau
 tableau.append(contentsOf: ["Swift, C, Python"])

// Ajouter un élément à un tableau
 tableau.append("Swift")
 tableau.append("C")
 tableau.append("Python")
 print(tableau)

// Réorganiser les valeurs d'un tableau par ordre croissant
tableau2.sort()
print(tableau2)
 
 // Compter les éléments d'un tableau
 tableau2.count

// Voir si un tableau à des valeurs grâce aux booléens
 tableau2.isEmpty
 
 // Voir le dernier élément d'un tableau
 tableau2.count-1

// Voir plusieurséléments d'un tableau
 tableau2[1...3]

// Insérer un élément dans un tableau
 tableau.insert("Java", at: 2)

// Effacer l'élément dans un tableau
 tableau.remove(at: 2)

// Effacer tous les éléments d'un tableau
 tableau.removeLast()
 
