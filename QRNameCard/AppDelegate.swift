//
//  AppDelegate.swift
//  QRNameCard
//
//  Created by 김효성 on 2020/08/31.
//  Copyright © 2020 김효성. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = UIColor.red
        window?.rootViewController = MainViewController(mainContainerView: MainContainerView())
        window?.makeKeyAndVisible()
        return true
    }
}

