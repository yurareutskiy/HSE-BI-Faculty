//
//  ViewControllerForTest.swift
//  dev.biapp
//
//  Created by Pavel Krai on 03/11/15.
//  Copyright © 2015 Pavel Krai. All rights reserved.
//

import UIKit


class ViewControllerForTest: UIViewController, DKDropMenuDelegate {
    @IBOutlet weak var dropMenu: DKDropMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dropMenu.addItems(["hello", "goodbye", "why?"])
        dropMenu.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: DKDropMenuDelegate
    func itemSelectedWithIndex(index: Int, name: String) {
        print("\(name) selected");
    }
}
