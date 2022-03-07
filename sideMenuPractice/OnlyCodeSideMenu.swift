//
//  OnlyCodeSideMenu.swift
//  sideMenuPractice
//
//  Created by 박정태 on 2022/03/07.
//

import UIKit
import SideMenu

class OnlyCodeSideMenu: UITableViewController  {
    let items = ["1", "2"]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        return cell
    }
}
