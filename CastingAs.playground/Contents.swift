import UIKit

class Animal{
    var name: String
    init(n:String) {
        name = n
    }
}

class Human: Animal{
    func code(){
        print("Human is coding")
    }
}

class Fish:Animal{
    func breathUnderWater(){
        print("Fish is breathing under water")
    }
}

let anton = Human(n: "AntonV")
let jack = Human(n: "JackSparrow")
let nemo = Fish(n: "NemoFish")
let num = 12

let neighbours:[AnyObject] = [anton, jack, nemo, num]




// IS allows to check an object DataType
//if neighbours[0] is Human{
//    print("Neighbour is human")
//}


// AS is casting to a lower level class...from Animal to Fish...to get access to all lower class features
func findNemo(from animals: [Animal]){
    for animal in animals{
        if animal is Fish{
            print(animal.name)
            let fish =  animal as! Fish
            fish.breathUnderWater()
            // raise class from lower class Fish to its super-class Animal
            let animalFish = fish as Animal
        }
    }
}

findNemo(from: neighbours)

//
//let fish = neighbours[1] as? Fish
//
////fish2.breathUnderWater()
