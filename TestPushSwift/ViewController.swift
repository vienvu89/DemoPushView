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


    @IBAction func goView1IsTapped(_ sender: AnyObject) {
        
        //If dont want segue you can add code pramagtically here and remember asign delegate same with prepare segue
        self.performSegue(withIdentifier: segue1, sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segue1 {
            let controller = segue.destination as! ViewController1
            controller.delegate = self
        }
    }
    
    func dismissViewController(_ controller: UIViewController) {
        controller.dismiss(animated: true) { () -> Void in
            //Perform segue or push some view with your code
            self.performSegue(withIdentifier: self.segue2, sender: nil)
        }
    }
}

