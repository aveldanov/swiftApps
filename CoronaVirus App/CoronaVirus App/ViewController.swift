//
//  ViewController.swift
//  CoronaVirus App
//
//  Created by Veldanov, Anton on 3/17/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    let headers = [
        "x-rapidapi-host": "covid-19-coronavirus-statistics.p.rapidapi.com",
        "x-rapidapi-key": "rvqYMxQeuYmshEkhLvl2sYWhGPUBp1eoMKWjsnqjP9CaOUcBrT"
    ]
    
    let request = NSMutableURLRequest(url: NSURL(string: "https://covid-19-coronavirus-statistics.p.rapidapi.com/v1/stats?country=Canada")! as URL,cachePolicy: .useProtocolCachePolicy, timeoutInterval: 10.0)
    
    

    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers
    
    let session = URLSession.shared
    let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
        if (error != nil) {
            print(error)
        } else {
            let httpResponse = response as? HTTPURLResponse
            print(httpResponse)
        }
    })
    
    dataTask.resume()
    
    
    
    
    
    
    
    
    
    
    
    
}

