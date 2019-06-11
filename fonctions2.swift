import UIKit

var str = "Hello, playground"

// Une closure est une partie de code, avec paramètres et sorties, qui peut être encapsulé dans une variable, et exécutée à la demande.

// Déclaration : Une closure se déclare grâce au {} et peut être appelée (exécutée) grâce aux parenthèses :

let helloClosure = {
    print("hello, I’m a closure")
}

helloClosure() // Le code est exécuté ici

// A/ Comme les fonctions, les closures ont des paramètres d’entrée et de retour: Ainsi, les valeurs dans la première partie après la { sont les paramètres d’entrées et après la -> ce sont les paramètres de sortie. Le code à exécuter est après le in.

let complexClosure = {(name:String, age:Float) -> Bool in
    // Code
    return false
}
let success = complexClosure("Louis",32)
print("Louis has \(success)")

/*
// B/ Ainsi la complexClosure ci-dessus est du type : ((String, Float)) -> (Bool). Je peux alors écrire ce code puisque les closures sont du même type :

let otherComplexClosure = { (surname:String,size:Float) -> Bool in
    // Other complexe Code
    return true
}
complexClosure = otherComplexClosure
*/

/*

Les closures ont une connaissance du contexte qui l’entoure. Ce qui veut dire que si la closure est créé dans une méthode, elle aura accès :
au contexte de classe en passant par self (variables, autre fonctions...) et au contexte de la fonction (paramètres, fonctions internes...)
 */

class Animal {
    var name = "Boby"
    
    func crier(cri:String){
        let uselessClosure = {
            print("\(self.name) cri \(cri)")
        }
        uselessClosure()
    }
}

// Trailing Closure : Pour finir, un peu d'esthétisme car on aime tous le beau code. La Trailing Closure est une syntaxe d'appel de fonction qui permet de rendre le code plus facile à lire.

// Prenant la fonction suivante, prenant une URL est une closure de type Void->Void :

func doLongTask(on file:URL,
                completion:() -> ()){
    //long task
    completion()
}

// Appel de la fonction

doLongTask(on: aFileURL){
    print("Task Applied on \(aFileURL)")
}
