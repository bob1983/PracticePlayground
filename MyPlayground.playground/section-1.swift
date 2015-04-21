import UIKit
import XCPlayground

class CustomTableViewCell: UITableViewCell{
    override func setNeedsLayout() {
        super.setNeedsLayout()
        
        // ここを書き換えることで UI の調整をする
        var label = UILabel(frame: CGRectMake(100, 10, 200, 50))
        label.text = "test label"
        self.addSubview(label)
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    let items = ["Item 1", "Item 2", "Item 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
        self.tableView = UITableView(frame:self.view.frame)
        self.tableView!.dataSource = self
        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(self.tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = CustomTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        let text = self.items[indexPath.row]
        cell.textLabel?.text = text
        return cell
    }
}

var ctrl = ViewController()
XCPShowView("Playground tableview", ctrl.view)

