//
//  ViewController.swift
//  TestPushSwift
//
//  Created by Vien Vu  on 11/19/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, View1Delegate {
    
    let segue1 = "Segue1"
    let segue2 = "Segue2"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func goView1IsTapped(sender: AnyObject) {
        self.performSegueWithIdentifier(segue1, sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == segue1 {
            let controller = segue.destinationViewController as! ViewController1
            controller.delegate = self
        }
    }
    
    func dismissViewController(controller: UIViewController) {
        controller.dismissViewControllerAnimated(true) { () -> Void in
            self.performSegueWithIdentifier(self.segue2, sender: nil)
        }
    }
}

