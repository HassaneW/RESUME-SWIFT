import UIKit

var str = "Hello, playground"

// Getter et Setter sont 2 moyens pour affecter et récupérer les valeurs d'une propriéte à l'intérieur d'une classe ou d'une structure.


// Properties Observers : WillSet et DidSet

class MemberArea {
    
    var userName: String = "" {
        willSet(newuser) { // Willset est une fonction qui prend en paramétre la nouvelle valeur de username juste avant qu'elle soit affecter
            print("\(newuser) est sur le point de se connecter")
        }
        
        didSet(previousUser) { // Didset est une fonction qui s'applique une fois que username a pris la nouvelle valeur
            if previousUser == "" { // PreviousUser était le nom utiliser avant par username avt d'avoir sa nouvelle valeur
                print("Aucun utilisateur n'était connecté")
                
            } else {
                print("\(previousUser) était l'utilisateur courant")
                
            }
            
        }
    }
}

var myaccount = MemberArea()
myaccount.userName = "Hassane"
myaccount.userName = "frero"

var name: String = "Moussa" {
    willSet {
        print("\(newValue) remplace \(name)")
    }
}

// Nouvelle valeur qui remplace Moussa
name = "Hassane"
