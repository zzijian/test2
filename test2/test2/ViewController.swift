//
//  ViewController.swift
//  test2
//
//  Created by apple on 17/4/7.
//  Copyright © 2017年 solo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var doer: UIButton!
    
    
    var i:Int = 0
    
    @IBAction func doUp(sender: AnyObject) {
        
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.5)
        
//        var tempFrame:CGRect = doer.frame
//        tempFrame.origin.y = tempFrame.origin.y - 40
//        doer.frame = tempFrame
        doer.transform = CGAffineTransformTranslate(doer.transform,0,-40)
    
        UIView.commitAnimations()
    }
    
    @IBAction func doRight(sender: AnyObject) {
       
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.5)
        
//        var tempFrame:CGRect = doer.frame
//        tempFrame.origin.x = tempFrame.origin.x + 40
//        doer.frame = tempFrame
        doer.transform = CGAffineTransformTranslate(doer.transform,40,0)
        UIView.commitAnimations()
    }
    
    @IBAction func doLeft(sender: AnyObject) {
       
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.5)
        
//        var tempFrame:CGRect = doer.frame
//        tempFrame.origin.x = tempFrame.origin.x - 40
        doer.transform = CGAffineTransformTranslate(doer.transform,-40,0)
//        doer.frame = tempFrame
        
        UIView.commitAnimations()
    }
    
    @IBAction func doDown(sender: AnyObject) {
       
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.5)
        
//        var tempFrame:CGRect = doer.frame
//        tempFrame.origin.y = tempFrame.origin.y + 40
//        doer.frame = tempFrame
//        
       doer.transform = CGAffineTransformTranslate(doer.transform,0,40)
        UIView.commitAnimations()
    }
    
    @IBAction func doBigger(sender: AnyObject) {
//        var tempFrame:CGRect = doer.frame
//        tempFrame.size.height = tempFrame.size.height * 1.3
//        tempFrame.size.width = tempFrame.size.width * 1.3
//        doer.frame = tempFrame
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.5) //设置动画时间
        doer.transform = CGAffineTransformScale(doer.transform, 1.3 ,1.3)
        UIView.commitAnimations()
//        doer.frame.size.height = doer.frame.size.height * 1.3
//        doer.frame.size.width = doer.frame.size.width * 1.3
    }
    
    @IBAction func doSmaller(sender: AnyObject) {
        
//        var tempFrame:CGRect = doer.frame
//        tempFrame.size.height = tempFrame.size.height * 0.7
//        tempFrame.size.width = tempFrame.size.width * 0.7
//        doer.frame = tempFrame
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.5) //设置动画时间
        doer.transform = CGAffineTransformScale(doer.transform, 0.7 ,0.7)
        UIView.commitAnimations()
//test
        //test2

    }
    
    @IBAction func doLeftR(sender: AnyObject) {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.5)
        
        doer.transform = CGAffineTransformRotate(doer.transform, CGFloat(-M_PI/4))
        UIView.commitAnimations()
    }
    
//    @IBOutlet var doRightR: UIButton!
    
    @IBAction func doRightR(sender: AnyObject) {
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(0.5)
        
        doer.transform = CGAffineTransformRotate(doer.transform, CGFloat(M_PI/4))
        
        UIView.commitAnimations()
    }
    
    @IBAction func doChange(sender: AnyObject) {
        i += 1
        if(i%2 == 1){
                    doer.setBackgroundImage(UIImage(named:"IMG_1.jpg"), forState:.Normal)
        }else{
                    doer.setBackgroundImage(UIImage(named:"IMG_0207.jpg"), forState:.Normal)
        }
        
    }
}

