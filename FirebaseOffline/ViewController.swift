//
//  ViewController.swift
//  FirebaseOffline
//
//  Created by Manan Malik on 24/09/20.
//

import UIKit
import FirebaseDatabase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Database.database().isPersistenceEnabled = true
        
        let ref = Database.database().reference()
        
        let presenceRef = Database.database().reference(withPath: "disconnectmessage");
        // Writing a string when this client loses connection
        
        presenceRef.onDisconnectSetValue("I disconnected!")
        
        ref.child("Clothes").childByAutoId()
            .setValue(["name":"Tee", "price": 799])
        
//        ref.child("Clothes/name").observeSingleEvent(of: .value) { (snapshot) in
//            let name = snapshot.value as? String
//        }
    }


}

