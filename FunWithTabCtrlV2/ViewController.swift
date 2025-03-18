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

    @IBOutlet weak var buttonHideTabs: UIButton?

    @IBAction func onHideTabs(_ sender: UIButton) {
        guard let tabBarController = self.tabBarController else {
            return
        }
        tabBarController.tabBar.isHidden.toggle()
        sender.setTitle(tabBarController.tabBar.isHidden ? "Show Tabs" : "Hide Tabs", for: .normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        tabBarController?.tabBar.isHidden = false
        buttonHideTabs?.setTitle("Hide Tabs", for: .normal)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        
    }

}

