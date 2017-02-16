//
//  BeaconManager.swift
//  SimulateBeaconLib
//
//  Created by lucas colomer on 16/02/2017.
//  Copyright © 2017 lucas colomer. All rights reserved.
//

import Foundation
import CoreLocation
import Firebase
import FirebaseDatabase

public class FBZBeaconManager {
    var ref: FIRDatabaseReference!
    
    var beaconsRef: FIRDatabaseReference!
    var regionRef: FIRDatabaseReference?
    
    public init() {
        FIRApp.configure()
        ref = FIRDatabase.database().reference()
    }
    
    public func startMonitoring(forRegion: CLBeaconRegion) {
        self.regionRef = FIRDatabase.database().reference(withPath: "beacons/\(forRegion.proximityUUID)")
        self.regionRef?.observe(FIRDataEventType.value, with: { (snapshot) in
            let postDict = snapshot.value as? [String : AnyObject] ?? [:]
            print(postDict.description)
        })
    }
}
