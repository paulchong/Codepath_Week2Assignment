//
//  IntroViewController.swift
//  Week2Project_Carousel
//
//  Created by Paul Chong on 2/15/15.
//  Copyright (c) 2015 Codepath. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var introImage: UIImageView!

    
    @IBOutlet weak var tile1View: UIImageView!
    @IBOutlet weak var tile2View: UIImageView!
    @IBOutlet weak var tile3View: UIImageView!
    @IBOutlet weak var tile4View: UIImageView!
    @IBOutlet weak var tile5View: UIImageView!
    @IBOutlet weak var tile6View: UIImageView!
    
    var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
    var xOffsets : [Float] = [-30, 75, -66, -10, -200, -15]
    var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
    var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
    
    func convertValue(value: Float, r1min: Float, r1max: Float, r2min: Float, r2max: Float) -> Float {
        var ratio = (r2max - r2min) / (r1max - r1min)
        return value * ratio + r2min - r1min * ratio
    }
    
    func transformView(view: UIView!, atIndex index : Int, offset : Float) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        scrollView.contentSize = introImage.frame.size
        scrollView.delegate = self
        scrollView.sendSubviewToBack(introImage)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView){
        var offset = Float(scrollView.contentOffset.y)
        println(offset)
        
        
        var tx = convertValue(offset, r1min: 0, r1max: 568, r2min: -30, r2max: 0)
        var ty = convertValue(offset, r1min: 0, r1max: 568, r2min: -285, r2max: 0)
        tile1View.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        var rotation =  convertValue(offset, r1min: 0, r1max: 568, r2min: -10, r2max: 0)
        tile1View.transform = CGAffineTransformRotate(tile1View.transform, CGFloat(Double(rotation) * M_PI / 180))
    
    }


    
    
    
}
