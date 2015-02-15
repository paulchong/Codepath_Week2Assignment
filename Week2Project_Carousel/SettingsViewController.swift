//
//  SettingsViewController.swift
//  Week2Project_Carousel
//
//  Created by Paul Chong on 2/11/15.
//  Copyright (c) 2015 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    

    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    @IBOutlet weak var settingsImage: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsScrollView.contentSize = settingsImage.frame.size
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBackButton(sender: AnyObject) {
        navigationController!.popViewControllerAnimated(true)
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
