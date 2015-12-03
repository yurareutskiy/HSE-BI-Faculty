//
//  ViewController.swift
//  dev.biapp
//
//  Created by Pavel Krai on 21/10/15.
//  Copyright © 2015 Pavel Krai. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ENSideMenuDelegate {
    var pageMenu : CAPSPageMenu?
    override func viewDidLoad() {
        var controllerArray : [UIViewController] = []
        var controller1 : UIViewController = UIViewController()
        controller1.view.backgroundColor = UIColor.purpleColor()
        controller1.title = "PURPLE"
        controllerArray.append(controller1)
        
        var controller2 : UIViewController = UIViewController()
        controller2.view.backgroundColor = UIColor.orangeColor()
        controller2.title = "ORANGE"
        controllerArray.append(controller2)
        
        var controller3 : UIViewController = UIViewController()
        controller3.view.backgroundColor = UIColor.grayColor()
        controller3.title = "GRAY"
        controllerArray.append(controller3)
        
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 500.0, self.view.frame.width, 300), pageMenuOptions: nil)
        
        print(self.view.frame.height)
        self.view.addSubview(pageMenu!.view)
        
        
        // show the navigation bar over the side menu view
        
        self.sideMenuController()?.sideMenu?.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func toggleSideMenu(sender: AnyObject) {
        toggleSideMenuView()
    }
    
    // MARK: - ENSideMenu Delegate
    func sideMenuWillOpen() {
        print("sideMenuWillOpen")
    }
    
    func sideMenuWillClose() {
        print("sideMenuWillClose")
    }
    
    func sideMenuShouldOpenSideMenu() -> Bool {
        print("sideMenuShouldOpenSideMenu")
        return true
    }
    
    func sideMenuDidClose() {
        print("sideMenuDidClose")
    }
    
    func sideMenuDidOpen() {
        print("sideMenuDidOpen")
    }
}

