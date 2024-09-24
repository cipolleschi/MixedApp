//
//  ViewController.swift
//  BrownfieldApp
//
//  Created by Riccardo Cipolleschi on 10/09/2024.
//

import UIKit

class TabViewController: UITabBarController {

  var mainViewControler: HomeViewController?
  var settingsViewController: SettingsViewController?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    self.tabBar.backgroundColor = .systemBackground
    self.selectedIndex = 0
    
    mainViewControler = HomeViewController()
    mainViewControler?.tabBarItem.title = "Home"
    mainViewControler?.tabBarItem.image = UIImage(systemName: "house")
    mainViewControler?.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
    
    settingsViewController = SettingsViewController()
    settingsViewController?.tabBarItem.title = "Settings"
    settingsViewController?.tabBarItem.image = UIImage(systemName: "gearshape")
    settingsViewController?.tabBarItem.selectedImage = UIImage(systemName: "gearshape.fill")
    
    self.viewControllers = [mainViewControler!, settingsViewController!]
  }


}
