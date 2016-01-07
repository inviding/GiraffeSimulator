//
//  DayThreeViewController.swift
//  giraffeDayz
//
//  Created by Student on 12/16/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class DayThreeViewController: UIViewController {
    @IBOutlet weak var day3Pic: UIImageView!
    @IBOutlet weak var karmaCount: UILabel!
    
    var karma = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        karmaCount.text = "\(karma)"
        day3Pic.image = UIImage(named: "aslanTheLion")
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "thirdWin"{
            karma += 2
            let nextVC = segue.destinationViewController as! DayThreeSuccessViewController
            nextVC.karma = karma
        }
        else if segue.identifier == "thirdFail"{
            karma += 1
            let nextVC = segue.destinationViewController as! DayThreeFailViewController
            nextVC.karma = karma
        }
}
}
