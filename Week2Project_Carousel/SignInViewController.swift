//
//  SignInViewController.swift
//  Week2Project_Carousel
//
//  Created by Paul Chong on 2/11/15.
//  Copyright (c) 2015 Codepath. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressSignInButton(sender: AnyObject) {
        if(emailTextField.text == "email" && passwordTextField.text == "pw") {
        performSegueWithIdentifier("loginSegue", sender:self)
        } else {
            var alertView = UIAlertView(title: "Oops", message: "wrong email/password", delegate: nil, cancelButtonTitle: "ok")
        }
        
        
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
