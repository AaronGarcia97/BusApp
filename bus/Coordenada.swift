//
//  Coordenada.swift
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
    Mark(name:"Tecnológico de Monterrey, Campus Monterrey",  lat:25.651358, long:-100.291024)
]

class Coordenada: UIViewController {
    
    
    @IBOutlet weak var Views: UIView!
    
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
            marker.icon = GMSMarker.markerImage(with: .blue)
            marker.snippet = "Hello from \(Mark.name)"
            marker.map = mapView
        }
        let path = GMSMutablePath()
        path.add(CLLocationCoordinate2D(latitude: 25.73121, longitude: -100.397372))
        path.add(CLLocationCoordinate2D(latitude: 25.730125, longitude:-100.39654999999999))
        path.add(CLLocationCoordinate2D(latitude: 25.724517, longitude: -100.39435300000002))
        path.add(CLLocationCoordinate2D(latitude: 25.720236, longitude: -100.38858299999998))
        path.add(CLLocationCoordinate2D(latitude: 25.716014, longitude:-100.382937))
        path.add(CLLocationCoordinate2D(latitude: 25.712069, longitude:-100.37762099999998))
        path.add(CLLocationCoordinate2D(latitude: 25.699873, longitude:-100.363045))
        path.add(CLLocationCoordinate2D(latitude: 25.695632, longitude:-100.35732200000001))
        path.add(CLLocationCoordinate2D(latitude: 25.694334, longitude:-100.35471899999999))
        path.add(CLLocationCoordinate2D(latitude: 25.651358, longitude:-100.291024))
        let polyline = GMSPolyline(path: path)
        polyline.map=mapView
        polyline.strokeColor = .blue
    }
    
}
