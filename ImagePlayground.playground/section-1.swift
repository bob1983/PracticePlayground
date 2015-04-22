// Playground - noun: a place where people can play

import UIKit
import XCPlayground
/**
 * iPhone6のサイズの背景ビュー
 */
class BackgroundView : UIView {
    
    override init() {
        let frame = CGRect(x: 0, y: 0, width: 750, height: 1334)
        super.init(frame: frame)
        
        self.backgroundColor = UIColor.blueColor()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}


var str = "Hello, playground"
let myIcon = UIImage(named: "bob_icon")

/**
 * ラベルの背景色を変更して確認
 */
let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 30))
myLabel.textAlignment = NSTextAlignment.Center
myLabel.textColor = UIColor.blueColor()
myLabel.text = "Sample Playground"

for var grayColor : CGFloat = 0.9; grayColor > 0.0; grayColor -= 0.1 {
    myLabel.backgroundColor = UIColor(white: grayColor, alpha: 1.0)
}

/**
 *  TableViewDelegate
 */
class SampleTableViewDelegate : NSObject, UITableViewDelegate {
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return 44
//    }
}

/**
 *  TableViewDatasource
 */
class SampleTableViewDatasource : NSObject, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return 1
//    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let cell = SampleTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "SampleTableViewCell") as SampleTableViewCell
//        cell.configureData("hoge", imageName: "fuga")
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "SampleTableViewCell")
        cell.textLabel?.text = "hoge"
        return cell
    }
}

class SampleViewController : UIViewController {
//class SampleViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
        view.backgroundColor = UIColor.greenColor()
        
        tableView = UITableView(frame:view.frame)
        tableView.delegate = SampleTableViewDelegate()
        tableView.dataSource = SampleTableViewDatasource()
        
        tableView.registerClass(SampleTableViewCell.self, forCellReuseIdentifier: "SampleTableViewCell")
        view.addSubview(tableView)
    }
    
//    var tableView: UITableView!
//    let items = ["Item 1", "Item 2", "Item 3"]
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.view.backgroundColor = UIColor.greenColor()
//        self.view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
//        self.tableView = UITableView(frame:self.view.frame)
//        self.tableView!.dataSource = self
//        self.tableView!.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
//        self.view.addSubview(self.tableView)
//    }
//    
//    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
//        return self.items.count;
//    }
//    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
//        var cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
//        let text = self.items[indexPath.row]
//        cell.textLabel?.text = text
//        return cell
//    }
}

/**
 *  TableViewCell
 */
class SampleTableViewCell : UITableViewCell {
    
    let nameLabel : UILabel!
    let iconImageView : UIImageView!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        nameLabel = UILabel()
        nameLabel.font = UIFont.systemFontOfSize(10.0)
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.backgroundColor = UIColor(white: 0.8, alpha: 1.0)
        
        iconImageView = UIImageView()
        iconImageView.backgroundColor = UIColor.clearColor()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        nameLabel.sizeToFit()
    }
    
    func configureData(name: String, imageName: String) {
        nameLabel.text = name
        iconImageView.image = UIImage(named: imageName)
    }
}

