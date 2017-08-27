//
//  Coordenada.swift
//  bus
//
//  Created by A4RON on 8/26/17.
//  Copyright © 2017 A4RON. All rights reserved.
//

import Foundation

class Coordenada {
    init() {
        
    }
    
    var lati = 0.0;
    var longi = 0.0;
    
    init(lati: Double, longi: Double) {
        self.lati = lati
        self.longi = longi
    }
    
    func getLati() -> Double {
        return self.lati
    }
    
    func getLongi() -> Double {
        return self.longi
    }
}
