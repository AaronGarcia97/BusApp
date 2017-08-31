//
//  ViewControllerMap.swift
//  bus
//
//  Created by A4RON on 8/26/17.
//  Copyright © 2017 A4RON. All rights reserved.
//
import Foundation
import UIKit

class ViewControllerCumbres: UIViewController {
    
    let hour = Calendar.current.component(.hour, from: Date())
    let minutes = Calendar.current.component(.minute, from: Date())

    
    @IBAction func checkTime1(_ sender: Any) {
        print(750 - (hour*60 + minutes))
    }
    
    @IBOutlet weak var Views: UIView!
    
    @IBOutlet weak var ReminderCumbres: UIButton!
    
}

