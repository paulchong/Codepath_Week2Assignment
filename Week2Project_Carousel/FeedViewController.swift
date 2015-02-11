//
//  FeedViewController.swift
//  Week2Project_Carousel
//
//  Created by Paul Chong on 2/11/15.
//  Copyright (c) 2015 Codepath. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var feedScrollView: UIScrollView!
    
    @IBOutlet weak var feedImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        feedScrollView.contentSize = feedImage.frame.size

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
