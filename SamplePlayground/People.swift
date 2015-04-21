//
//  SampleTableModel.swift
//  SamplePlayground
//
//  Created by bob on 2015/04/22.
//  Copyright (c) 2015年 bob. All rights reserved.
//

import UIKit

class People: NSObject {
    var firstName: String
    var lastName: String
    
    init (firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName  = lastName
    }
}
