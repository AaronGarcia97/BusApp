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
    Mark(name:"Tecnológico de Monterrey, Campus Monterrey",  lat:25.651358, long:-100.291024)
]

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

class YourViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
     // create UISegmented (Cumbres/S.P) and Picker(Time)
    @IBOutlet weak var Lugar: UISegmentedControl!
    @IBOutlet weak var Tiempo: UIPickerView!
    var pickerDataSource = ["05:45","07:05","08:45","11:45","13:15","14:45","16:15"] // the data for cumbres data.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Tiempo.delegate = self  // esto es para que sea su propio delegate
        Tiempo.dataSource = self  // para evitar el protocolo
    }
    
 
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

    
    @IBAction func IndexChanged(_ sender: Any) {
        switch Lugar.selectedSegmentIndex{
        //case 0 :
            
        //case 1 :
        default:
            break
            
        }
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1 // Declaro que solo teiene un componente el view
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count; // Se obtiene la source
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row] as String // se nombra el pickerView
    }
}

