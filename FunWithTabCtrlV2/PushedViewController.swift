// PushedViewController.swift
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

class PushedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if #available(iOS 18.0, visionOS 2.0, *) {
            tabBarController?.setTabBarHidden(true, animated: true)
        } else {
            tabBarController?.tabBar.isHidden = true
        }
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
