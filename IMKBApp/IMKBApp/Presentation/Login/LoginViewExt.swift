//
//  LoginViewExt.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import UIKit

extension LoginView {
    func setLoginContentView()  {
        addSubview(loginContentView)
        loginContentView.backgroundColor = .clear
        if #available(iOS 11.0, *) {
            loginContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        }
        loginContentView.setLeft(equalTo: leftAnchor)
        loginContentView.setRight(equalTo: rightAnchor)
        loginContentView.setBottom(equalTo: bottomAnchor)
        
        setLoginImageView()
        setLoginStartButton()
    }
    
    func setLoginImageView(){
        loginContentView.addSubview(loginImageView)
        loginImageView.setCenterX(equalTo: loginContentView.centerXAnchor)
        loginImageView.setCenterY(equalTo: loginContentView.centerYAnchor)
        loginImageView.setWidth(width: 300)
        loginImageView.setHeight(height: 100)
    }
    
    func setLoginStartButton(){
        loginContentView.addSubview(loginStartButton)
        loginStartButton.setRight(equalTo: loginContentView.rightAnchor, constant: -40)
        loginStartButton.setLeft(equalTo: loginContentView.leftAnchor, constant: 40)
        loginStartButton.setTop(equalTo: loginImageView.bottomAnchor, constant: 40)
        loginStartButton.setHeight(height: 50)
    }
    
}
