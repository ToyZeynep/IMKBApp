//
//  LoginViewExt.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation

import UIKit
import Foundation

extension LoginView {
    func setLoginContentView()  {
        addSubview(loginContentView)
        loginContentView.backgroundColor = UIColor(rgb: 0xF5F5F5)
        if #available(iOS 11.0, *) {
            loginContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        } else {
        }
        loginContentView.setLeft(equalTo: leftAnchor)
        loginContentView.setRight(equalTo: rightAnchor)
        loginContentView.setBottom(equalTo: bottomAnchor)
    }
    
    func setLoginImageView(){
        loginContentView.addSubview(loginImageView)
        loginImageView.setCenterX(equalTo: loginContentView.centerXAnchor)
        loginImageView.setCenterY(equalTo: loginContentView.centerYAnchor)
        
    }
    
    func setLoginStartButton(){
        loginContentView.addSubview(loginStartButton)
        loginStartButton.setRight(equalTo: loginContentView.rightAnchor, constant: -20)
        loginStartButton.setLeft(equalTo: loginContentView.leftAnchor, constant: 20)
        loginStartButton.setTop(equalTo: loginImageView.bottomAnchor, constant: 20)
        loginStartButton.setBottom(equalTo: loginContentView.bottomAnchor, constant: 40)
    }

}
