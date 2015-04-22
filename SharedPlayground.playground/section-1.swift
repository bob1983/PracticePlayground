// Playground - noun: a place where people can play

import UIKit
import XCPlayground
import SharedFramework

class TestViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tableView : UITableView!
    
    class Person {
        var name : String!
        var age : Int!
        
        init (name: String, age: Int) {
            self.name = name
            self.age = age
        }
    }
    
    let peoples = [
        Person(name: "Sample1", age: 20)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
        tableView = UITableView(frame: view.frame, style: UITableViewStyle.Grouped)
        tableView.delegate      = self
        tableView.dataSource    = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        view.addSubview(tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peoples.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = peoples[indexPath.row].name
        return cell
    }
}

let viewController = TestViewController()
XCPShowView("Playground taddbleview", viewController.view)
