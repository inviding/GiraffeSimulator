//
//  ResultsViewController.swift
//  giraffeDayz
//
//  Created by Student on 12/16/15.
//  Copyright © 2015 Student. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var finalImage: UIImageView!
    @IBOutlet weak var resultsView: UITextView!
    @IBOutlet weak var karmaCount: UILabel!
    
    var karma = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        karmaCount.text = "You had \(karma) Karma"
        if(karma == 6){
            resultsView.text = "Congrats! u have proved ur domiance. You reincarnated!"
            finalImage.image = UIImage(named: "happyGiraffe")
        }
        else{
            resultsView.text = "sorry, u did not earn enough karma points. blame chad."
            finalImage.image = UIImage(named: "sadGiraffe")
        }
        // Do any additional setup after loading the view.
    }

  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
