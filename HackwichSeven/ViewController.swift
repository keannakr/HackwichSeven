//
//  ViewController.swift
//  HackwichSeven
//
//  Created by Keanna Ramiscal on 4/4/19.
//  Copyright © 2019 Keanna Ramiscal. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
   
    @IBOutlet var mapView: MKMapView!
    
    let initialLocation = CLLocation(latitude: 21.361888 , longitude: -158.055725)
    let regionRadius: CLLocationDistance = 10000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        centerMapLocation(location: initialLocation)
      
        let restaurantOne = Restaurant(title: "Kalapawai", type: "American", coordinate: CLLocationCoordinate2D(latitude: 21.346470, longitude: -158.080098))
        mapView.addAnnotation(restaurantOne)
    }

    func centerMapLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegion.init (center: location.coordinate, latitudinalMeters: regionRadius, longitudinalMeters: regionRadius)
        
        
        mapView.setRegion(coordinateRegion, animated: true)
    }

}

