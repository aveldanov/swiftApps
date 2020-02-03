//
//  main.swift
//  ObjectOriendted
//
//  Created by Veldanov, Anton on 2/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

protocol GroceryItem {
    func cost() -> Float
    func description()->String
}


struct Apple: GroceryItem{
    func description() -> String {
        return "\(name) and price \(price)"
    }
    
    func cost() -> Float {
        return price
    }
    
    let name:String
    let price: Float
    
}

struct Beef: GroceryItem{
    func description() -> String {
        return "\(name) and total price \(pricePerPound*weight)"
    }
    
    func cost() -> Float {
        return weight*pricePerPound
    }
    
    let name: String
    let weight: Float
    let pricePerPound: Float
    
}


struct Customer{
    let name:String
    let groceries: [GroceryItem]
}

struct GroceryStore{
    func printReceipt(customer:Customer){
        print("printing receipt for the customer:  \(customer.name)")
//        var total:Float = 0
        
        let total = customer.groceries.reduce(0) { (result, item) -> Float in
            return result + item.cost()
        }
        customer.groceries.forEach { (item) in
            
            print(item.description())
//            total += item.cost()
            
            
//            if let groceryItem = item as? GroceryItem{
//                print(groceryItem.description())
//                total += groceryItem.cost()
//            }
            
            
            
//            if let apple = item as? Apple{
//                print("\(apple.name) price: \(apple.price)")
//              total += apple.price
//            }else if let beef = item as? Beef{
//                print("\(beef.name) weight: \(beef.weight), price per pound:\(beef.pricePerPound) ")
//                total += beef.pricePerPound*beef.weight
//            }
            
            
            
            
        }
        print("Total: ",total)
    }
}


let newYorkSteak = Beef(name: "New York Steak", weight: 2.5, pricePerPound: 9.99)
let greenApple = Apple(name: "Green Apple", price: 1.99)
let redApple = Apple(name: "Red Apple", price: 2.99)

let bill = Customer(name:"Bill", groceries: [greenApple,redApple, newYorkSteak])
let safeway = GroceryStore()
safeway.printReceipt(customer: bill)
