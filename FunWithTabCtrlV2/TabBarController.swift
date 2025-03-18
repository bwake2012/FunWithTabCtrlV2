// TabBarController.swift
//
// Created by Bob Wakefield on 3/16/25.
// for FunWithTabCtrlV2
//
// Using Swift 6.0
// Running on macOS 15.3
//
// 
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        mode = .tabSidebar
        viewControllers?[0].tabBarItem = UITabBarItem(title: "Item 1", image: UIImage(systemName: "1.circle"), tag: 1)
        viewControllers?[1].tabBarItem = UITabBarItem(title: "Item 2", image: UIImage(systemName: "2.circle"), tag: 2)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
