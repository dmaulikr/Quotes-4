//
//  AppDelegate.swift
//  Quotes
//
//  Created by Matteo Manferdini on 27/02/16.
//  Copyright © 2016 Pure Creek. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
	var window: UIWindow?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		UINavigationBar.appearance().tintColor = .white
		UINavigationBar.appearance().barTintColor = .electricViolet
		UINavigationBar.appearance().isTranslucent = false
		UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
		return true
	}
}

extension UIColor {
	class var electricViolet: UIColor {
		return UIColor(red: 144.0 / 255.0, green: 18.0 / 255.0, blue: 254.0 / 255.0, alpha: 1.0)
	}
}

