//
//  ViewController.swift
//  LocalNotifications
//
//  Created by Enrique  on 22/08/16.
//  Copyright © 2016 Enrique . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func enviarNotificacion(sender: AnyObject) {
        let localNotification = UILocalNotification()
        //envía la notificacion dentro de 5 segundos
        localNotification.fireDate = NSDate(timeIntervalSinceNow: 5)
        localNotification.alertBody = "Cuerpo de la notificacion\nCon salto de línea"
        localNotification.timeZone = NSTimeZone.defaultTimeZone()
        //incrementa el valor de la app que muestra
        localNotification.applicationIconBadgeNumber = UIApplication.sharedApplication().applicationIconBadgeNumber + 1
        
        UIApplication.sharedApplication().scheduleLocalNotification(localNotification)
        
    }

}

