//
//  FirstViewContorller.swift
//  Delegates-rev5.1
//
//  Created by Veldanov, Anton on 3/17/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
        override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func buttonCliecked(_ sender: UIButton) {
        
        
//        let secondVC = SecondViewController()
//        secondVC.labelData = "Yo MF"
//
//        self.present(secondVC, animated: true, completion: nil)
//        OR:
        
        performSegue(withIdentifier: "goToResults", sender: self)
        // now the problem to pass over the value -> prepare method
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // to make sure its the right SEGUE
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.labelData = "YOPUYOH"
            
        }
        
        
        
    }
    
    
}
