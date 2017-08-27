//
//  ViewControllerMap.swift
//  bus
//
//  Created by A4RON on 8/26/17.
//  Copyright © 2017 A4RON. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

struct Mark{
    let name: String
    let lat: CLLocationDegrees
    let long: CLLocationDegrees
}

let Cumbres = [
    Mark(name:"HEB(Inicio)",  lat:25.73121, long:-100.397372),
    Mark(name:"Barcelona",  lat:25.730125, long:-100.39654999999999),
    Mark(name:"Diamant(Super 7)",  lat:25.724517, long:-100.39435300000002),
    Mark(name:"Paseo de los Navegantes/Rotonda de las casas",  lat:25.720236, long:-100.38858299999998),
    Mark(name:"Eric el Rojo (Super 7)",  lat:25.716014, long:-100.382937),
    Mark(name:"Paseo de la Cima (Starbucks)",  lat:25.712069, long:-100.37762099999998),
    Mark(name:"VIPS",  lat:25.699873, long:-100.363045),
    Mark(name:"Parque Av. Enrique C. Livas y 7a. Avenida",  lat:25.695632, long:-100.35732200000001),
    Mark(name:"Clinica Ricardo Madla",  lat:25.694334, long:-100.35471899999999),
    Mark(name:"Tec de Mty",  lat:25.651358, long:-100.291024)
    
]


class YourViewController: UIViewController {
    
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 25.731619, longitude: -100.397105, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        for Mark in Cumbres {
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: Mark.lat, longitude: Mark.long)
            marker.title = Mark.name
            marker.snippet = "Hello this is \(Mark.name)"
            marker.map = mapView
        }
    }
}


