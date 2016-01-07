//
//  DayOneViewController.swift
//  giraffeDayz
//
//  Created by Student on 12/16/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class DayOneViewController: UIViewController {

    @IBOutlet weak var karmaCount: UILabel!
    @IBOutlet weak var dayOnePicture: UIImageView!
    @IBOutlet weak var DayOneTextView: UITextView!
    var karma = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        karmaCount.text = "\(karma)"
        dayOnePicture.image = UIImage(named: "girlGiraffe")

        DayOneTextView.text = "You see a beautiful giraffe lady, but another male has joined the battle. Do you:"
        // Do any additional setup after loading the view.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "firstWin"{
            karma += 2
            let nextVC = segue.destinationViewController as! DayOneSuccessViewController
            nextVC.karma = karma
        }
        else if segue.identifier == "firstMeh"{
            karma += 1
            let nextVC = segue.destinationViewController as! DayOneMehViewController
            nextVC.karma = karma
        }
        else if segue.identifier == "firstFail"{
            karma += 0
            let nextVC = segue.destinationViewController as! DayOneFailViewController
            nextVC.karma = karma
    }
    

}
}