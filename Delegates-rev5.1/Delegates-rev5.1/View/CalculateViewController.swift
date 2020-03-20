//
//  ViewController.swift
//  Delegates-rev5.1
//
//  Created by Veldanov, Anton on 3/17/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

protocol DataDelegate {
    func printTheString(string: String)
}



class CalculateViewController: UIViewController, DataDelegate {
    func printTheString(string: String) {
        print(string)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

}


