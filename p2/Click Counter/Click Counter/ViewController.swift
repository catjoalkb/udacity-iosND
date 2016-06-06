//
//  ViewController.swift
//  Click Counter
//
//  Created by wctjerry on 16/6/6.
//  Copyright © 2016年 wctjerry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel? // in the video, ! is used here

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // Label
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        
        // increment Button
        var incrementButton = UIButton()
        incrementButton.frame = CGRectMake(150, 250, 120, 60)
        incrementButton.setTitle("Increase", forState: .Normal)
        incrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.view.addSubview(incrementButton)
        incrementButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        incrementButton.addTarget(self, action: "changeBackgroundColor", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        // decrement Button
        var decrementButton = UIButton()
        decrementButton.frame = CGRectMake(150, 350, 120, 60)
        decrementButton.setTitle("Decrease", forState: .Normal)
        decrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        decrementButton.addTarget(self, action: "changeBackgroundColor", forControlEvents: UIControlEvents.TouchUpInside)
    }
    
    func incrementCount() {
        self.count += 1
        self.label?.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count -= 1
        self.label?.text = "\(self.count)"
    }
    
    func changeBackgroundColor() {
        self.view.backgroundColor = UIColor.randomColor()
    }
}

// Add random background color function: http://stackoverflow.com/questions/29779128/how-to-make-a-random-background-color-with-swift

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static func randomColor() -> UIColor {
        // If you wanted a random alpha, just create another
        // random number for that too.
        return UIColor(red:   .random(),
                       green: .random(),
                       blue:  .random(),
                       alpha: 1.0)
    }
}

