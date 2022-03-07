//
//  ViewController.swift
//  sideMenuPractice
//
//  Created by 박정태 on 2022/03/07.
//

import UIKit
import SideMenu

class ViewController: UIViewController {
    let menu: SideMenuNavigationController = SideMenuNavigationController(rootViewController: OnlyCodeSideMenu())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menu.presentDuration = 2.0
        SideMenuManager.default.leftMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }

    @IBAction func onClickBtnHandler(_ sender: Any) {
        present(menu, animated: true)
    }
    
    @IBAction func onClickBtnHandler1(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let sideMenuViewController: MySideMenu = storyboard.instantiateViewController(withIdentifier: "MySideMenu") as! MySideMenu

        let menu = MySideMenuController(rootViewController: sideMenuViewController)

        present(menu, animated: true, completion: nil)

    }
}

