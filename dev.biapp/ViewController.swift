//
//  ViewController.swift
//  dev.biapp
//
//  Created by Pavel Krai on 21/10/15.
//  Copyright © 2015 Pavel Krai. All rights reserved.
//

import UIKit

class User: NSObject {
    var name: String?
    var lastname: String?
    var faculty: String?
    var course: String?
}

class Week: NSObject {
    
}

class ViewController: UIViewController, ENSideMenuDelegate {
    var pageMenu : CAPSPageMenu?
    override func viewDidLoad() {
        Shedule().title = "Расписание"
        var controllerArray : [UIViewController] = []
        var controller1: UIViewController = Events()
        controller1.title = "Мероприятия"
        var controller2: UIViewController = Shedule()
        controller2.title = "Расписание"
        
        var controller3 : UIViewController = UIViewController()
        controller3.view.backgroundColor = UIColor.whiteColor()
        controller3.title = "Объявления"
        controllerArray.append(controller1)
        controllerArray.append(controller2)
        controllerArray.append(controller3)
        
        var parameters: [CAPSPageMenuOption] = [
            .ScrollMenuBackgroundColor(UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)),
            .ViewBackgroundColor(UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 1.0)),
            .SelectionIndicatorColor(UIColor.orangeColor()),
            .BottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .MenuItemFont(UIFont(name: "HelveticaNeue", size: 13.0)!),
            .MenuHeight(40.0),
            .MenuItemWidth(90.0),
            .CenterMenuItems(true)
        ]
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 300.0, self.view.frame.width, 500), pageMenuOptions: parameters)
        
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

