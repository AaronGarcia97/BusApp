//
//  CoordenadaSP.swift
//  bus
//
//  Created by los paez on 27/08/17.
//  Copyright © 2017 A4RON. All rights reserved.
//

import Foundation
import UIKit
import GoogleMaps

struct MarkTwo{
    let name: String
    let lat: CLLocationDegrees
    let long: CLLocationDegrees
}

let SanPedro = [
    Mark(name:"Altamirano (Inicio)",  lat:25.656394, long:-100.40814599999999),
    Mark(name:"Matamoros",  lat:25.653608, long:-100.39937299999997),
    Mark(name:"Parque (parabús)",  lat:25.6536, long:-100.38936999999999),
    Mark(name:"Río Elba",  lat:25.656772, long:-100.38460499999997),
    Mark(name:"Río Mississipi",  lat:25.662999, long:-100.38202999999999),
    Mark(name:"Río Amazonas (Farmacias del Ahorro)",  lat:25.664918, long:-100.38100700000001),
    Mark(name:"Río Amazonas (Farmacia Benavides)",  lat:25.65767, long:-100.35664),
    Mark(name:"Av. Vasconcelos y Sabino (esquina Sierra Madre)",  lat:25.652982, long:-100.355873),
    Mark(name:"Pantepec y Tamuín",  lat:25.658462, long:-100.345257),
    Mark(name:"Tec Milenio (Banco IXE)",  lat:25.631289, long:-100.30163800000003),
    Mark(name:"Tecnológico de Monterrey, Campus Monterrey",  lat:25.651445, long:-100.29105400000003)
]

class CoordenadaSP: UIViewController {
    
    
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 25.656394, longitude: -100.40814599999999, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        for MarkTwo in SanPedro {
            let marker = GMSMarker()
            marker.position = CLLocationCoordinate2D(latitude: MarkTwo.lat, longitude: MarkTwo.long)
            marker.title = MarkTwo.name
            marker.icon = GMSMarker.markerImage(with: .blue)
            marker.snippet = "Hello from \(MarkTwo.name)"
            marker.map = mapView
        }
        let path = GMSMutablePath()
        path.add(CLLocationCoordinate2D(latitude:25.656394, longitude:-100.40814599999999))
        path.add(CLLocationCoordinate2D(latitude:25.653608, longitude:-100.39937299999997))
        path.add(CLLocationCoordinate2D(latitude:25.6536, longitude:-100.38936999999999))
         path.add(CLLocationCoordinate2D(latitude:25.656772, longitude:-100.38460499999997))
         path.add(CLLocationCoordinate2D( latitude:25.662999, longitude:-100.38202999999999))
         path.add(CLLocationCoordinate2D( latitude:25.664918, longitude:-100.38100700000001))
         path.add(CLLocationCoordinate2D(latitude:25.65767, longitude:-100.35664))
         path.add(CLLocationCoordinate2D(latitude:25.652982, longitude:-100.355873))
         path.add(CLLocationCoordinate2D(latitude:25.658462, longitude:-100.345257))
         path.add(CLLocationCoordinate2D(latitude:25.631289, longitude:-100.30163800000003))
         path.add(CLLocationCoordinate2D(latitude:25.651445, longitude:-100.29105400000003))
        let polyline = GMSPolyline(path: path)
        polyline.map=mapView
        polyline.strokeColor = .blue
        
    }
    
}

