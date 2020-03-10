


class Dragon: Enemy {
    var wingSpan = 2
    func talk(speech: String){
        
        print("Says: \(speech)")
        
    }
    
    override func move() {
        print("Dragon Flys")
    }
    
    
    override func attack() {
        super.attack()
        print("Spit fire does damage")
    }
    
}
