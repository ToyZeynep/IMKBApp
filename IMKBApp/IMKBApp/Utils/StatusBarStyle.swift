//
//  StatusBarStyle.swift
//  IMKBApp
//
//  Created by MacOS on 20.11.2021.
//

import Foundation
import UIKit

class StatusBarStyle: UIViewController{
    static func changeBarColor() {
        if #available(iOS 13, *){
            let statusBar = UIView(frame: (UIApplication.shared.keyWindow?.windowScene?.statusBarManager?.statusBarFrame)!)
            statusBar.backgroundColor = .red
            UIApplication.shared.keyWindow?.addSubview(statusBar)
        } else {
           let statusBar: UIView = UIApplication.shared.value(forKey: "statusBar") as! UIView
           if statusBar.responds(to:#selector(setter: UIView.backgroundColor)) {
               statusBar.backgroundColor = .red
           }
           UIApplication.shared.statusBarStyle = .lightContent
        }
        
    }
}
