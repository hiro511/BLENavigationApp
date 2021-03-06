//
//  AppDelegate.swift
//  BLEPeripheral
//
//  Created by 今野浩紀 on 2016/09/15.
//  Copyright © 2016年 今野浩紀. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        configureWindow()
        
        return true
    }

}

// MARK - private methods
private extension AppDelegate {
    func configureWindow(){
        
        let navigationViewCon = NavigationViewController()
        navigationViewCon.view.backgroundColor = .white
        navigationViewCon.title = "Navigation"
        
        let settingViewCon = SettingVIewController()
        settingViewCon.view.backgroundColor = .white
        settingViewCon.title = "Setting"
        let settingNavViewCon = UINavigationController(rootViewController: settingViewCon)
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers([navigationViewCon, settingNavViewCon], animated: true)
        
        window?.rootViewController = tabBarController
    }
    
}
