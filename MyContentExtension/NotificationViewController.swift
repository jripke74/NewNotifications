//
//  NotificationViewController.swift
//  MyContentExtension
//
//  Created by Jeff Ripke on 6/1/17.
//  Copyright © 2017 Jeff Ripke. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {
    
    @IBOutlet weak var imageView: UIImageView!

    func didReceive(_ notification: UNNotification) {
        guard let attachment = notification.request.content.attachments.first else {
            return
        }
        if attachment.url.startAccessingSecurityScopedResource() {
            let imageData = try? Data.init(contentsOf: attachment.url)
            if let image = imageData {
                imageView.image = UIImage(data: image)
            }
        }
    }
}
