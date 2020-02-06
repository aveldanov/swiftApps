//
//  ViewController.swift
//  mindGameRevised
//
//  Created by Veldanov, Anton on 2/5/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var pickNumZero: UIButton!
    @IBOutlet weak var pickNumOne: UIButton!
    @IBOutlet weak var pickNumberTwo: UIButton!
    @IBOutlet weak var pickNumThree: UIButton!
    @IBOutlet weak var pickNumFour: UIButton!
    @IBOutlet weak var pickNumFive: UIButton!
    @IBOutlet weak var pickNumSix: UIButton!
    @IBOutlet weak var pickNumSeven: UIButton!
    
    
    
    
    @IBOutlet var numViewsArray: [UIButton]!

    
    var pattern = [1,2,3,4]
    
    var array = [5,6,7,7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    var arrNum = [
        [8,8,8,8],
        [8,8,8,8]
    ]
    
    var count = 0
    
  
    
    
    @IBAction func clickNumber(_ sender: UIButton) {
//        print(sender.currentTitle!)
        
        print("Array:",numViewsArray[0].currentTitle)
        
        numViewsArray[count].setTitle(sender.currentTitle, for: .normal)
        
        count += 1
     
    }
    
    
    
    @IBAction func checkButtonClicked(_ sender: UIButton) {
        
        verifyRow(input: count)
    }
    
    
    
    
    
    
    func verifyRow(input: Int){
        
        var currentArray = [Int]()
        print("count: ",count)
        var startCount = count-4
        var endCount = count-1
     
        for i in startCount...endCount{
            currentArray.append(Int(numViewsArray[i].currentTitle!)!)
        }
        
        print(currentArray)
    }
    
    
    
    
    
    
    
}

