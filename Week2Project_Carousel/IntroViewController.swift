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
    
        var t2x = convertValue(offset, r1min: 0, r1max: 568, r2min: 75, r2max: 0)
        var t2y = convertValue(offset, r1min: 0, r1max: 568, r2min: -240, r2max: 0)
        tile2View.transform = CGAffineTransformMakeTranslation(CGFloat(t2x), CGFloat(t2y))
        var scale2 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.65, r2max: 1)
        var rotation2 =  convertValue(offset, r1min: 0, r1max: 568, r2min: -10, r2max: 0)
        tile2View.transform = CGAffineTransformScale(tile2View.transform, CGFloat(scale2), CGFloat(scale2))
        tile2View.transform = CGAffineTransformRotate(tile2View.transform, CGFloat(Double(rotation2) * M_PI / 180))
        
        
        var t3x = convertValue(offset, r1min: 0, r1max: 568, r2min: -66, r2max: 0)
        var t3y = convertValue(offset, r1min: 0, r1max: 568, r2min: -415, r2max: 0)
        tile3View.transform = CGAffineTransformMakeTranslation(CGFloat(t3x), CGFloat(t3y))
        var scale3 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.7, r2max: 1)
        var rotation3 =  convertValue(offset, r1min: 0, r1max: 568, r2min: 10, r2max: 0)
        tile3View.transform = CGAffineTransformScale(tile3View.transform, CGFloat(scale3), CGFloat(scale3))
        tile3View.transform = CGAffineTransformRotate(tile3View.transform, CGFloat(Double(rotation3) * M_PI / 180))
        
        var t4x = convertValue(offset, r1min: 0, r1max: 568, r2min: -10, r2max: 0)
        var t4y = convertValue(offset, r1min: 0, r1max: 568, r2min: -408, r2max: 0)
        tile4View.transform = CGAffineTransformMakeTranslation(CGFloat(t4x), CGFloat(t4y))
        var scale4 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.6, r2max: 1)
        var rotation4 =  convertValue(offset, r1min: 0, r1max: 568, r2min: 10, r2max: 0)
        tile4View.transform = CGAffineTransformScale(tile4View.transform, CGFloat(scale4), CGFloat(scale4))
        tile4View.transform = CGAffineTransformRotate(tile4View.transform, CGFloat(Double(rotation4) * M_PI / 180))
        
        var t5x = convertValue(offset, r1min: 0, r1max: 568, r2min: -200, r2max: 0)
        var t5y = convertValue(offset, r1min: 0, r1max: 568, r2min: -480, r2max: 0)
        tile5View.transform = CGAffineTransformMakeTranslation(CGFloat(t5x), CGFloat(t5y))
        var scale5 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.65, r2max: 1)
        var rotation5 =  convertValue(offset, r1min: 0, r1max: 568, r2min: 10, r2max: 0)
        tile5View.transform = CGAffineTransformScale(tile5View.transform, CGFloat(scale5), CGFloat(scale5))
        tile5View.transform = CGAffineTransformRotate(tile5View.transform, CGFloat(Double(rotation5) * M_PI / 180))
        
        var t6x = convertValue(offset, r1min: 0, r1max: 568, r2min: -500, r2max: 0)
        var t6y = convertValue(offset, r1min: 0, r1max: 568, r2min: -15, r2max: 0)
        tile6View.transform = CGAffineTransformMakeTranslation(CGFloat(t6x), CGFloat(t6y))
        var scale6 = convertValue(offset, r1min: 0, r1max: 568, r2min: 1.65, r2max: 1)
        var rotation6 =  convertValue(offset, r1min: 0, r1max: 568, r2min: 10, r2max: 0)
        tile6View.transform = CGAffineTransformScale(tile6View.transform, CGFloat(scale6), CGFloat(scale6))
        tile6View.transform = CGAffineTransformRotate(tile6View.transform, CGFloat(Double(rotation6) * M_PI / 180))
        
        
    }


    
    
    
}
