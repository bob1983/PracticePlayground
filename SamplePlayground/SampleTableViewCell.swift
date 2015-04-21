//
//  SampleTableViewCell.swift
//  SamplePlayground
//
//  Created by bob on 2015/04/22.
//  Copyright (c) 2015年 bob. All rights reserved.
//

import UIKit

class SampleTableViewCell: UITableViewCell {

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(people: People) {
        textLabel?.text = people.firstName
        detailTextLabel?.text = people.lastName
    }

}
