//
//  LoginView.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import UIKit
import Material
import iProgressHUD

class LoginView: UIView {
    
    lazy var progressHud: iProgressHUD = {
        let progressHud = iProgressHUD()
        progressHud.iprogressStyle = .vertical
        progressHud.indicatorStyle = .ballClipRotate
        progressHud.isShowModal = true
        progressHud.isShowCaption = false
        progressHud.isTouchDismiss = false
        progressHud.isBlurModal = true
        progressHud.boxColor = .black
        progressHud.indicatorColor = .white
        progressHud.modalColor = .white
        progressHud.alphaModal = 0.95
        progressHud.boxSize = 35
        return progressHud
    }()
    
    lazy var loginContentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.masksToBounds = true
        view.layer.shouldRasterize = true
        return view
    }()
    
    lazy var loginImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "loginLogo")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.masksToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    lazy var loginStartButton: UIButton = {
        var button = UIButton()
        button.setTitle("IMKB Hisse Senetleri / Endeksler", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = UIColor(rgb: 0xF5F5F5)
        button.titleLabel?.font = .preferredFont(forTextStyle: .body, compatibleWith: .none)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageEdgeInsets = EdgeInsets(top: 3, left: 3, bottom: 3 , right: 3)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setLoginContentView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
