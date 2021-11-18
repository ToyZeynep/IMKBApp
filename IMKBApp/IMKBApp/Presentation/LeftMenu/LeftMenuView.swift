//
//  LeftMenuView.swift
//  IMKBApp
//
//  Created by MacOS on 18.11.2021.
//

import Foundation
import UIKit
import Material

class LeftMenuView: UIView {
    
    lazy var leftMenuContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        view.layer.shouldRasterize = true
        return view
    }()
    
    
    lazy var leftMenuToolBarView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(rgb: 0xF3F3F3)
        view.layer.masksToBounds = true
        view.layer.shouldRasterize = true
        return view
    }()
    
    
    lazy var leftMenuImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "LeftMenuLogo")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.backgroundColor = .red
        return imageView
    }()
    lazy var leftMenuLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.text = "Satış"
        label.numberOfLines = 1
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var leftMenuAllStocksButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Hisse ve Endeksler", for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    lazy var leftMenuIncreasingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Yükselenler", for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    lazy var leftMenuDecreasingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Düşenler", for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    lazy var leftMenuVolume30Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Hacme Göre - 30", for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    lazy var leftMenuVolume50Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Hacme Göre - 50", for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    lazy var leftMenuVolume100Button: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Hacme Göre - 100", for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        return button
    }()
    
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
      
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
