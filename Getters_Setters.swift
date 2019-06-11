import UIKit
import Foundation

// Grâce aux getters, nous avons accés aux attributs de notre classe
// Grâce aux Setters on peut modifier les valeurs des attributs de notre Classe

class Voiture {
    
    private var _roues = 4
    private var _nombreDeVitesses : Int?
    private var _vitesseMax : Int
    private var _couleur : UIColor
    private var _nombresDePlaces : Int
    private var _marque : String
    private var _modele : String
    private var _kilometrage : Float
    
    
    var roues : Int {
        
        get {
            return _roues
        }
    }
    
    var nombreDeVitesses : Int {
        
        get {
            return _nombreDeVitesses ?? 5
            
        }
    }
    
    var vitesseMax : Int {
        
        get {
            
            return _vitesseMax
            
        } set {
            _vitesseMax = vitesseMax
        }
    }
    
    var couleur : UIColor {
        
        get {
            
            return _couleur

        }
        
        set {
             _couleur = couleur
        }
    }
    
    var nombreDePlaces : Int {
        
        get {
            
            return _nombresDePlaces
        }
        
        set {
            
            _nombresDePlaces = nombreDePlaces
        }
    }
    
    var kilometrage : Float {
        
        get {
            
            return _kilometrage
        }
        
        set {
            if newValue >= _kilometrage {
                _kilometrage = newValue
            } else {
                print("Canaillou, tu essaies de m'avoir")
                
            }
        }
    }
    
    var marque : String {
        
        get {
            
            return _marque
        }
    }
    
    var modele : String {
        
        get {
            
            return _modele
        }
    }
    
    init(marque : String, modele : String, couleur : UIColor, nombreDePlaces : Int, vitesseMax : Int, nombreDeVitesses : Int?, kilometrage : Float) {
        
    
        
        self._marque = marque
        self._modele = modele
        self._couleur = couleur
        self._nombresDePlaces = nombreDePlaces
        self._vitesseMax = vitesseMax
        self._nombreDeVitesses = nombreDeVitesses
        self._kilometrage = kilometrage
        
    }
}

let clio = Voiture(marque: "Renault", modele: "Clio", couleur: UIColor.lightGray, nombreDePlaces: 5, vitesseMax: 150, nombreDeVitesses: nil, kilometrage: 100000)

let ibiza = Voiture(marque: "Seat", modele: "Ibiza", couleur: UIColor.red, nombreDePlaces: 5, vitesseMax: 180, nombreDeVitesses: nil, kilometrage: 218000)

clio.kilometrage = 8000
print(clio.kilometrage)
clio.couleur = UIColor.blue
print(clio.couleur)

