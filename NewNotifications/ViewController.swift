//
//  ViewController.swift
//  NewNotifications
//
//  Created by Jeff Ripke on 5/31/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 1. REQUEST PERMISSION
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { (granted, error) in
            if granted {
                print("Notification access granted")
            } else {
                print(error?.localizedDescription)
            }
        })
    }
    
}
