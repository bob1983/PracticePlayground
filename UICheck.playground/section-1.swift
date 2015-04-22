// Playground - noun: a place where people can play

import UIKit
import XCPlayground

var hello = "hello"

let myLabel : UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
myLabel.textAlignment = NSTextAlignment.Center
myLabel.textColor = UIColor.blackColor()
myLabel.backgroundColor = UIColor.greenColor()
myLabel.text = "Sample Playground"
myLabel.frame = CGRect(x: 0, y: 0 , width: 250, height: 25)
myLabel.layer.cornerRadius = 4.0
myLabel
myLabel.clipsToBounds = true
myLabel