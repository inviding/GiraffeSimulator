//
//  ViewController.swift
//  giraffeDayz
//
//  Created by Student on 12/15/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dumbGiraffe: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dumbGiraffe.image = UIImage(named: "giraffe")
        // Do any additional setup after loading the view, typically from a nib.
    }


}

