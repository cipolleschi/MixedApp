//
//  AppDelegate.swift
//  MixedApp
//
//  Created by Riccardo Cipolleschi on 24/09/2024.
//

import UIKit
import React_RCTAppDelegate
import React

@main
class AppDelegate: RCTAppDelegate {

   override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      super.moduleName = "Settings"
      self.initialProps = [:];

      super.application(application, didFinishLaunchingWithOptions: launchOptions)

      let rootViewController = TabViewController()
      self.window.rootViewController = rootViewController
      self.window.makeKeyAndVisible()

      return true
  }

    override func sourceURL(for bridge: RCTBridge) -> URL? {
      return bundleURL()
    }

    override func bundleURL() -> URL?
    {
    #if DEBUG
      return RCTBundleURLProvider.sharedSettings().jsBundleURL(forBundleRoot: "index")
    #else
      return NSBundle.main .url(forResource: "main", withExtension: "jsbundle")
    #endif
    }
}

