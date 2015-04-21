// Playground - noun: a place where people can play

import UIKit
import XCPlayground
import SharedFramework

var str = "Hello, playground"

let nib = UINib(nibName: "SampleViewController", bundle: NSBundle.mainBundle())
print(NSBundle.mainBundle())
print("Path is \(XCPSharedDataDirectoryPath)")
//XCPShowView("ほげ", viewController.view)