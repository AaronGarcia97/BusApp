//
//  ViewController.swift
//  bus
//
//  Created by A4RON on 8/26/17.
//  Copyright © 2017 A4RON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var Username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    let Username2 : String = "aguirregzz97"
    
    let password2 : String = "12345"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func CheckLogin(_ sender: AnyObject) {
        
        if(Username.text == Username2 && password.text == password2)
        {
            print("C")
        }
        else
        {
            print("nelson")
        }
        
    }
    
    
    
    
    
    
    
    
    
}


