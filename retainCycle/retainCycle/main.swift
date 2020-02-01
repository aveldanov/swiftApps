


class Person{
    let name: String
    
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
}

var bob: Person? = Person(name: "Bob")

var apt: Apartment = Apartment(number: 123)

apt.tenant = bob

bob = nil

print(bob)

//print(apt.tenant = nil)
