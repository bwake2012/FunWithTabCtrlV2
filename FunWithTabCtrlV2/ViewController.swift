// ViewController.swift
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

class ViewController: UIViewController {

    private var tabBarIsHidden: Bool = false

    @IBOutlet weak var buttonHideTabs: UIButton?

    @IBAction func onHideTabs(_ sender: UIButton) {
        guard let tabBarController = self.tabBarController else {
            return
        }

        tabBarIsHidden.toggle()
        if #available(iOS 18.0, visionOS 2.0, *) {
            tabBarController.setTabBarHidden(!tabBarController.tabBar.isHidden, animated: true)
        } else {
            tabBarController.tabBar.isHidden = tabBarIsHidden
        }
        sender.setTitle(tabBarIsHidden ? "Show Tabs" : "Hide Tabs", for: .normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        tabBarIsHidden = false

        if #available(iOS 18.0, visionOS 2.0, *) {
            tabBarController?.setTabBarHidden(tabBarIsHidden, animated: true)
        } else {
            tabBarController?.tabBar.isHidden = tabBarIsHidden
        }
//
        buttonHideTabs?.setTitle("Hide Tabs", for: .normal)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        
    }

}

