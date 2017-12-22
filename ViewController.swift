//
//  ViewController.swift
//  OpenCVForNoobs
//
//  Created by Aarsh Shah on 12/21/17.
//  Copyright © 2017 Aarsh Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let openCVWrapper = OpenCVWrapper()
        openCVWrapper.isThisWorking()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

