//
//  DayThreeFailViewController.swift
//  giraffeDayz
//
//  Created by Student on 12/16/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class DayThreeFailViewController: UIViewController {
    var karma = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextVC = segue.destinationViewController as! ResultsViewController
        nextVC.karma = karma
    }
}
