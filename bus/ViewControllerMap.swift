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

class YourViewController: UIViewController {
    
    // You don't need to modify the default init(nibName:bundle:) method.
    
    override func loadView() {
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate -33.86,151.20 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 25.731619, longitude: -100.397105, zoom: 16.0)
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
        view = mapView
        
        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 25.731619, longitude: -100.397105)
        marker.title = "Av Paseo de los Leones 3399 "
        marker.snippet = "Bosques de Las Cumbres, 64619 Monterrey, N.L."
        marker.map = mapView
    }
}


