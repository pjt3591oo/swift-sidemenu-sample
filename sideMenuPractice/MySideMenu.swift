//
//  MySideMenu.swift
//  sideMenuPractice
//
//  Created by 박정태 on 2022/03/07.
//

import UIKit
import SideMenu

class MySideMenuController : SideMenuNavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presentationStyle = .menuSlideIn
        self.menuWidth = self.view.frame.width * 0.5
        self.presentDuration = 2.0
        self.leftSide = true
    }
}

class MySideMenuCell: UITableViewCell {
    @IBOutlet weak var label: UILabel!
}



class MySideMenu: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var Tv: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tv.delegate = self
        Tv.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = Tv.dequeueReusableCell(withIdentifier: "MySideMenuCell", for:indexPath) as! MySideMenuCell
        cell.label.text = "\(indexPath.row)"
        return cell
    }
}
