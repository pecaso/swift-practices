//
//  CurrentRunVC.swift
//  Treads
//
//  Created by yasinkbas on 7.03.2019.
//  Copyright © 2019 yasinkbas. All rights reserved.
//

import UIKit
import MapKit

class CurrentRunVC: LocationVC {

    @IBOutlet weak var swipeBackgroundImageView: UIImageView!
    @IBOutlet weak var sliderImageView: UIImageView!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var paceLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var pauseBtn: UIButton!
    
    var startLocation: CLLocation!
    var lastLocation: CLLocation!
    var timer = Timer()
    
    var runDistance: Double = 0.0
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let swipeGesture = UIPanGestureRecognizer(target: self, action: #selector(endRunSwiped(sender:)))
        sliderImageView.addGestureRecognizer(swipeGesture)
        sliderImageView.isUserInteractionEnabled = true
        swipeGesture.delegate = self as? UIGestureRecognizerDelegate
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        manager?.delegate = self as! CLLocationManagerDelegate
        manager?.distanceFilter = 10
        startRun()
        
    }
    func startRun() {
        manager?.startUpdatingLocation()
        startTimer()
    }
    
    func endRun() {
        manager?.stopUpdatingLocation()
    }
    
    func startTimer() {
        durationLabel.text = counter.formatTimeDurationToString()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateCounter() {
        counter += 1
        durationLabel.text = counter.formatTimeDurationToString()
    }
    
    @IBAction func pauseButtonPressed(_ sender: Any) {
        
    }
    @objc func endRunSwiped(sender: UIPanGestureRecognizer) {
        let minAdjust: CGFloat = 80
        let maxAdjust: CGFloat = 129
        if let sliderView = sender.view {
            if sender.state == UIGestureRecognizer.State.began || sender.state == UIGestureRecognizer.State.changed {
                let translation = sender.translation(in: self.view)
                if sliderView.center.x >= (swipeBackgroundImageView.center.x - minAdjust) && sliderView.center.x <= (swipeBackgroundImageView.center.x + maxAdjust) {
                    sliderView.center.x = sliderView.center.x + translation.x
                } else if sliderView.center.x >= (swipeBackgroundImageView.center.x + maxAdjust) {
                    sliderView.center.x = swipeBackgroundImageView.center.x + maxAdjust
                    //End run code goes here
                    dismiss(animated: true, completion: nil)
                } else {
                    sliderView.center.x = swipeBackgroundImageView.center.x - minAdjust
                }
                sender.setTranslation(CGPoint.zero, in: self.view)
            } else if sender.state == UIGestureRecognizer.State.ended {
                UIView.animate(withDuration: 0.1) {
                    sliderView.center.x = self.swipeBackgroundImageView.center.x - minAdjust
                }
            }
        }
    }

}

extension CurrentRunVC: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            checkLocationAuthStatus()
        }
    }
 
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if startLocation == nil {
            // locations is array
            startLocation = locations.first

        } else if let location = locations.last {
            runDistance += lastLocation.distance(from: location)
            distanceLabel.text = "\(runDistance.metersToMiles(places: 2))"
        }
        lastLocation = locations.last
    }
}
