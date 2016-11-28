//
//  ViewController1.swift
//  TestPushSwift
//
//  Created by Vien Vu  on 11/19/15.
//  Copyright © 2015 VienVu. All rights reserved.
//

import UIKit

protocol View1Delegate: class {
    func dismissViewController(_ controller: UIViewController)
}

class ViewController1: UIViewController {
    
    var delegate : View1Delegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func backViewIsTapped(_ sender: AnyObject) {
        if self.delegate != nil {
            self.delegate.dismissViewController(self)
        }
        
    }
}
