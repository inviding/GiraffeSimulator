//
//  DayTwoViewController.swift
//  giraffeDayz
//
//  Created by Student on 12/16/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class DayTwoViewController: UIViewController {
    @IBOutlet weak var dayTwoPictures: UIImageView!
    @IBOutlet weak var karmaCount: UILabel!
    var karma = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        karmaCount.text = "\(karma)"
        dayTwoPictures.image = UIImage(named: "giraffeTree")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "secondWin"{
            karma += 2
            let nextVC = segue.destinationViewController as! DayTwoSuccessViewController
            nextVC.karma = karma
        }
        else if segue.identifier == "secondFail"{
            karma += 1
            let nextVC = segue.destinationViewController as! DayTwoMehViewController
            nextVC.karma = karma
        }

            
    }
}

