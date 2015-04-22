import UIKit
import XCPlayground

class CustomTableViewCell: UITableViewCell{
    let nameLabel : UILabel!
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        nameLabel = UILabel()
        nameLabel.backgroundColor = UIColor(white: 0.8, alpha: 1.0)
        contentView.addSubview(nameLabel)
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let nameLabelSize = nameLabel.sizeThatFits(CGSize(width: 100, height: 30))
        let nameLabelOrigin = CGPoint(x: (CGRectGetHeight(bounds) - nameLabelSize.height) / 2, y:(CGRectGetHeight(bounds) - nameLabelSize.height) / 2)
        nameLabel.frame = CGRect(x: nameLabelOrigin.x, y: nameLabelOrigin.y, width: nameLabelSize.width, height: nameLabelSize.height)
    }
    
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    let items = ["太郎", "二郎", "三郎"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.frame = CGRect(x: 0, y: 0, width: 320, height: 480)
        tableView = UITableView(frame:self.view.frame)
        tableView.backgroundColor = UIColor(white: 0.8, alpha: 1.0)
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        var cell = CustomTableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "cell")
        let text = self.items[indexPath.row]
        cell.nameLabel.text = text
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "セクションタイトル"
    }
    
    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "フッター"
    }
}

var ctrl = ViewController()
XCPShowView("Playground tableview", ctrl.view)

