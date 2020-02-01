


class Person{
    let name: String
    var apartment: Apartment?
    init(name:String) {
        self.name = name
    }
    
    deinit{
        print("\(name) has been deinit")
    }
    
}


class Apartment{
    let number:Int
  weak var tenant: Person?
    init(number:Int){
        self.number = number
    }
    
    deinit {
        print("Apart \(number) has been deinit")
    }
    
}


var bob: Person? = Person(name: "Bob")
var apt: Apartment? = Apartment(number: 123)
apt?.tenant = bob
bob?.apartment = apt
bob = nil
apt = nil

print(bob)
print(apt)




//var bob: Person? = Person(name: "Bob")
//
//var apt: Apartment = Apartment(number: 123)
//
//apt.tenant = bob
//
//bob = nil
//
//print(bob)
//
////print(apt.tenant = nil)
