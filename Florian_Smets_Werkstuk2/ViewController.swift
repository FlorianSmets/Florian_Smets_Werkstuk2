//
//  ViewController.swift
//  Florian_Smets_Werkstuk2
//
//  Created by student on 11/05/2018.
//  Copyright © 2018 student. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager: CLLocationManager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
self.locationManager = CLLocationManager()
self.locationManager.requestAlwaysAuthorization()
self.locationManager.startUpdatingLocation()
mapView.showsUserLocation = true
        
        struct Villo {
            
            
            
              }
        
        let url = URL(string: "http://opendatastore.brussels/dataset/villo")
        let request = URLRequest(url: url!)
        let session = URLSession(configuration:
            URLSessionConfiguration.default)

        let task = session.dataTask(with: request) {
            (data, response, error) in
            // check for errors
            guard error == nil else {
                print("error calling GET")
                print(error!)
                return
            }
            // make sure we got data
            guard let responseData = data else {
                print("Error: did not receive data")
                return
                
                
            }
          

         
        }
        task.resume()
        
        
        
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

