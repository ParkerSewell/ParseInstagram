//
//  ProfileViewController.swift
//  ParseInstagram
//
//  Created by Parker Sewell on 3/7/16.
//  Copyright © 2016 Parker Sewell. All rights reserved.
//

import UIKit

import Parse

class ProfileViewController: UIViewController {

   
    @IBAction func onSignout(sender: AnyObject) {
        PFUser.logOutInBackgroundWithBlock { (error) -> Void in
            if(error != nil){
                print(error!.localizedDescription)
            }else{
                self.performSegueWithIdentifier("signoutSegue", sender: nil)
            }
    
        }
    
    }
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

}

