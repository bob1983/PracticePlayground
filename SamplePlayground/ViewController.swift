//
//  ViewController.swift
//  SamplePlayground
//
//  Created by bob on 2015/04/21.
//  Copyright (c) 2015年 bob. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    var peoples = [
        People(firstName: "John", lastName: "Doe"),
        People(firstName: "Bob", lastName: "Strange"),
        People(firstName: "Jane", lastName: "Doe")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peoples.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: SampleTableViewCell = tableView.dequeueReusableCellWithIdentifier("SampleTableViewCell") as SampleTableViewCell
        cell.configure(peoples[indexPath.row])
        return cell
    }
}

