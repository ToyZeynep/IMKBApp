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
        imageView.image = UIImage(named: "leftMenuLogo")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    lazy var leftMenuTitleLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 1
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var leftMenuSubTitleLabel : UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = UIColor.black
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.text = "IMKB Hisse Senetleri/Endeksler"
        label.numberOfLines = 1
        label.textColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    lazy var leftMenuAllStocksButton: HighlightedButton = {
        let button = HighlightedButton(title: "Hisse Ve Endeksler")
        return button
    }()
    
    lazy var leftMenuIncreasingButton: HighlightedButton = {
        let button = HighlightedButton(title: "Yükselenler")
        return button
    }()
    
    lazy var leftMenuDecreasingButton: HighlightedButton = {
        let button = HighlightedButton(title: "Düşenler")
        return button
    }()
    
    lazy var leftMenuVolume30Button: HighlightedButton = {
        let button = HighlightedButton(title: "Hacme Göre-30")
        return button
    }()
    
    lazy var leftMenuVolume50Button: HighlightedButton = {
        let button = HighlightedButton(title: "Hacme Göre-50")
        return button
    }()
    
    lazy var leftMenuVolume100Button: HighlightedButton = {
        let button = HighlightedButton(title: "Hacme Göre-100")
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setLeftMenuContentView()
        setupGradientView(view: leftMenuToolBarView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    var gradient = CAGradientLayer()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradient.frame = leftMenuToolBarView.bounds
    }
    
    func setupGradientView(view: UIView){
        gradient.colors = [UIColor.black.withAlphaComponent(0.0).cgColor, UIColor.black.withAlphaComponent(0.6).cgColor]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.opacity = 5.0
        view.layer.insertSublayer(gradient, at: 0)
    }
    
}
