//
//  SecondViewController.swift
//  Delegates-rev5.1
//
//  Created by Veldanov, Anton on 3/17/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit


class SecondViewController: UIViewController {
    
    var labelData:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        
        let label = UILabel()
        label.text = labelData
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
    
    
    
}
