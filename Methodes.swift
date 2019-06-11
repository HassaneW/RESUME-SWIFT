import UIKit

var str = "Hello, playground"

// Les méthodes sont des fonctios associés à un type d'objet particulier (class, enum ou structure). Mais dans la grande majorité dans les classes

class Timer {
    var value = 0
    
    func start(from startTime : Int)  {
        value = startTime
    }
    
    func reset() {
        value = 0
    }
}

var monMinuteur = Timer()
monMinuteur.start(from: 34)
monMinuteur.value
monMinuteur.reset()
monMinuteur.value


class TV {
    var channel: String = "0"
    
    func setChannel(channel: String) {
        self.channel = channel
    }
}

var maTele = TV()
maTele.setChannel(channel: "TF1")
maTele.channel


// Pour les Structures ajouter "mutating"

struct Point {
    var x: Float
    var y: Float
    
    mutating func moveTo(x: Float, y: Float) {
        self.x = x
        self.y = y
    }
}


// "Static func", s'applique à tous les objets de la classe:

class Player {
    static var highesScore = 23
    var personnaleScore = 0
    
    static func updateCommonScore(newScore : Int) {
        if newScore > highesScore {
            highesScore = newScore
        }
    }
}

var joueur1 = Player()
joueur1.personnaleScore = 27

var joueur2 = Player()
joueur2.personnaleScore = 34

// Appel méthode de la classe Player

Player.updateCommonScore(newScore: joueur2.personnaleScore)


// Propriété commune à la classe 1 et à la classe 2 "static var"
class UneClasse {
    var prop1 : Int = 6
    static var prop2: String = "name"
}

var maclasse1 = UneClasse()
var maclasse2 = UneClasse()

print(UneClasse.prop2)
UneClasse.prop2 = "Other name"

