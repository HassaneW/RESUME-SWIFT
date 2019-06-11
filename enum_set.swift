import UIKit

var str = "Hello, playground"

// Enumération : PERMET DE STOCKER UN ENSEMBLE DE VALEUR PREDIFI; Avec un Nombre limité de choix d'options.

enum StatuFlash {
    
        case on
        case off
        case auto
}

var statut: StatuFlash = StatuFlash.on

statut = .auto


switch statut {
    
case StatuFlash.on: print("On")
    
case .off: print("Off")
    
case .auto: print("Auto")
    
}

enum Image  {
    
    case jpeg
    case png
    case bmp
    case gif
    case tiff
    
}

// La variable ne peut contenir qu'une valeur de l'énumération

var imageFormat = Image.jpeg

// Grâce à l'inférence de type,on peut récupérer directement le format dans l'énumération
imageFormat = .gif

// Créer un message pour chaque format en testant les types de l'énumération .jpeg, . png, etc... et supprimer le default.

switch imageFormat {
    
case .jpeg:
        print("Image au format Jpeg")
    
case .png:
    print("Image au format PNG")
    
case .bmp:
    print("Image au format BMP")
    
case .gif:
    print("Image au format GIF")
    
case .tiff:
    print("Image au format TIFF")

}

// Affecter à différents formats des valeurs d'entiers

enum ImageColor  {
    
    case jpeg (Int, Int)
    case png (Int, Int)
    case bmp (Int, Int)
    case gif (Int, Int)
    case tiff (Int, Int)
    
}

// Les entiers dans l'énumération peuvent correspondre à la taille de l'image

var myColorImage = ImageColor.jpeg(512, 126)

// En créant une variable à l'intérieur du switch case, on récupére les valeurs de l'image

switch myColorImage {
case .jpeg(let height, let width):
    print("Image de type jpeg : \(height) * \(width)")
    
// Quand tous les cas ne sont pas couvert
default:
    print("Image inconnu")
}



// Set : Ensemble non ordonnée d'éléments

// Créer un Set
var monPremierSet: Set<Int>

var monDeuxiemeSet = Set<Int>()

// Créer un Set vide
monPremierSet = []

// Ajouter des valeurs dans un set
var musicStyes: Set = ["Rock", "Classique", "Hip Hop"]

// Compter les valeurs d'un set
musicStyes.count

// Savoir si un Set contient des valeurs
musicStyes.isEmpty

//Insérer une valeur dans un set
musicStyes.insert("Jazz")

// Supprimer une valeur dans un Set
var suppression = musicStyes.remove("Classique")

// Rechercher une valeur dans un Set
musicStyes.contains("Hip Hop")

// Orgaiser les valeurs dans un Set
print(musicStyes.sorted())

var pairs : Set = [2, 4, 6, 8, 10, 12, 14, 16, 18]
var multipleDe4: Set = [4, 8, 12, 16]

// Renvoie toutes les valeurs présentent dans les 2 Set
pairs.intersection(multipleDe4)

// Renvoie tous les éléments présents dans les 2 set
pairs.union(multipleDe4)

// Booléens qui nous indique si le 1er Set est un sous ensemble du 2nd Set
multipleDe4.isSubset(of: pairs)

// Booléens qui nus indique si tous les éléments du 1er Set peuvent englober tous les éléments du 2nd Set
pairs.isSuperset(of: multipleDe4)

// Contre exemple du précédent
multipleDe4.isSuperset(of: pairs)

