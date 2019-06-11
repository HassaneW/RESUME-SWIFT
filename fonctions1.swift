import UIKit

var str = "Hello, playground"


// Prototype d'une fonction, une variable peut prendre le type d'une fonction

func ajouter(_ a: Int,_ b: Int) -> Int {
    
    return a + b
}


// Prototype fonction ajouter : (Int, Int) -> Int

var calculer: (Int, Int) -> Int

calculer = ajouter(_:_:)

calculer(34, 89)

// Prototype fonction qui permet d'écrire dans les arguments (inout et &) : Prototype (&Int, Int, Int) -> Void

func multiplier(resultat: inout Int, _ a: Int, _ b: Int) {
    
    resultat = a * b
}

// Créer une fonction dans une fonction

// Créer une fonction qui retourne une foncion qui a en paramétre un entier et qui retourne un entier

func chooseStepDirection(forward: Bool) -> (Int) -> (Int) {
    
    // A l'intérieur de la fonction "chooseStepDirection" créer 2 foncions
    
    func stepForward(position: Int) -> Int {
        return position + 1
        
    }
    
    func stepBackward(position: Int) -> Int {
        return position - 1
    }
    
    if forward {
        return stepForward
        
    } else {
        return stepBackward
    }
}

var position = 7
var move = chooseStepDirection(forward: true)
position = move(position)


// Fonctions Basique

var placesDisponibles = 200
var personnes = 0

func basique() {
    
    // Ajouter du code
    placesDisponibles -= 1
    personnes += 1
    
    print("Bienvenue au théâtre !")
    print("Nombres de places dispo: \(placesDisponibles)")
    print("Nombres de personnes : \(personnes)")
}
basique()
basique()

// Fonctions avec paramétres

func saluer(nom : String ) {
    print("Salutation cher " + nom)
}

saluer(nom: "Gerard")

func aire(_ longueur : Int,_ largeur : Int) {
    print("L'aire est de \(longueur * largeur)")
}

aire(4, 3)


func convertisseur(_ age : Int) -> String {
    let string = "L'âge demandé est de \(age) ans."
    return string
}

let ageEnString = convertisseur(33)

// Fonctions avec retour

func barman(age: Int) -> String {
    
    if age >= 50 {
        return "Whisky"
        
    } else if age >= 30 {
        return "Biére"
        
    } else if age > 18  {
        return "Vodka"
        
    } else if age == 18 {
        return "Champagne"
        
    } else {
        return "Soda"
    }
}

print("Votre commande est prête: " + barman(age: 33))
