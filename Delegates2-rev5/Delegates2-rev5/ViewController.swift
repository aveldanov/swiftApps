//
//  ViewController.swift
//  Delegates2-rev5
//
//  Created by Veldanov, Anton on 3/16/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

protocol DataDelegate {
    func printThisString(text:String)
    
    
}



class ViewController: UIViewController, DataDelegate {
    func printThisString(text: String) {
        print(text)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        perform(#selector(advance), with: nil, afterDelay: 2)
    }

    @objc func advance(){
        
        let vc = ViewControllerTwo()
        vc.delegate = self
        present(vc, animated: true, completion: nil)
    }

}


class ViewControllerTwo: UIViewController {
  
    var delegate: DataDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        delegate?.printThisString(text: "printing string yay")
    }


}
