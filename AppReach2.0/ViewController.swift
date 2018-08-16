//
//  ViewController.swift
//  AppReach2.0
//
//  Created by Gaurav Tyagi on 8/15/18.
//  Copyright © 2018 Gaurav Tyagi. All rights reserved.
//

import UIKit

//My view class
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    override func viewDidAppear(_ animated: Bool) {
        self.performSegue(withIdentifier: "loginView", sender: self)
    }
    
}

