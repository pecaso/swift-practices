//
//  ViewController.swift
//  pixel-city
//
//  Created by Yasinkbas on 1/14/19.
//  Copyright © 2019 Yasin Akbas. All rights reserved.
//

import UIKit
import MapKit

class MapVC: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }
    
    @IBAction func centerMapBtnWasPressed(_ sender: Any) {
        
    }
    


}
extension MapVC: MKMapViewDelegate {
    
}

