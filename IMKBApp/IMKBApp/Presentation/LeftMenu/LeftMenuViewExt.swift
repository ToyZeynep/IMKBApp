//
//  LeftMenuViewExt.swift
//  IMKBApp
//
//  Created by MacOS on 18.11.2021.
//

import Foundation
extension LeftMenuView {
    func setLeftMenuContentView()  {
        addSubview(leftMenuContentView)
        leftMenuContentView.backgroundColor = .clear
        if #available(iOS 11.0, *) {
            leftMenuContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        } else {
        }
        leftMenuContentView.setLeft(equalTo: leftAnchor)
        leftMenuContentView.setRight(equalTo: rightAnchor , constant: 50)
        leftMenuContentView.setBottom(equalTo: bottomAnchor)
        
        
        setLeftMenuToolBarView()
        setleftMenuAllStocksButton()
        setleftMenuIncreasingButton()
        setleftMenuDecreasingButton()
        setleftMenuVolume30Button()
        setleftMenuVolume50Button()
        setleftMenuVolume100Button()
    }
    
    func setLeftMenuToolBarView(){
        leftMenuContentView.addSubview(leftMenuToolBarView)
        leftMenuToolBarView.setTop(equalTo: leftMenuContentView.topAnchor)
        leftMenuToolBarView.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 10)
        setLeftMenuImageView()
        setLeftMenuLabel()
    }
    
    func setLeftMenuImageView(){
        leftMenuToolBarView.addSubview(leftMenuImageView)
        leftMenuImageView.setTop(equalTo: leftMenuToolBarView.topAnchor, constant: 10)
        leftMenuImageView.setLeft(equalTo: leftMenuToolBarView.leftAnchor, constant: 10)
        leftMenuImageView.setHeight(height: 50)
        leftMenuImageView.setWidth(width: 50)
    }
    func setLeftMenuLabel(){
        leftMenuToolBarView.addSubview(leftMenuLabel)
        leftMenuLabel.setTop(equalTo: leftMenuImageView.bottomAnchor, constant: 5)
        leftMenuLabel.setLeft(equalTo: leftMenuToolBarView.leftAnchor, constant: 10)
        leftMenuLabel.setBottom(equalTo: leftMenuToolBarView.bottomAnchor, constant: 10)
    }
    func setleftMenuAllStocksButton(){
        leftMenuContentView.addSubview(leftMenuAllStocksButton)
        leftMenuAllStocksButton.setTop(equalTo: leftMenuToolBarView.bottomAnchor, constant: 20)
        leftMenuAllStocksButton.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 10)
        leftMenuAllStocksButton.setRight(equalTo: leftMenuContentView.rightAnchor, constant: 10)
        leftMenuAllStocksButton.setHeight(height: 20)
    }
    func setleftMenuIncreasingButton(){
        leftMenuContentView.addSubview(leftMenuIncreasingButton)
        leftMenuIncreasingButton.setTop(equalTo: leftMenuAllStocksButton.bottomAnchor, constant: 20)
        leftMenuIncreasingButton.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 10)
        leftMenuIncreasingButton.setRight(equalTo: leftMenuContentView.rightAnchor, constant: 10)
        leftMenuIncreasingButton.setHeight(height: 20)
    }
    func setleftMenuDecreasingButton(){
        leftMenuContentView.addSubview(leftMenuDecreasingButton)
        leftMenuDecreasingButton.setTop(equalTo: leftMenuIncreasingButton.bottomAnchor, constant: 20)
        leftMenuDecreasingButton.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 10)
        leftMenuDecreasingButton.setRight(equalTo: leftMenuContentView.rightAnchor, constant: 10)
        leftMenuDecreasingButton.setHeight(height: 20)
    }
    
    func setleftMenuVolume30Button(){
        leftMenuContentView.addSubview(leftMenuVolume30Button)
        leftMenuVolume30Button.setTop(equalTo: leftMenuDecreasingButton.bottomAnchor, constant: 20)
        leftMenuVolume30Button.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 10)
        leftMenuVolume30Button.setRight(equalTo: leftMenuContentView.rightAnchor, constant: 10)
        leftMenuVolume30Button.setHeight(height: 20)
    }
    func setleftMenuVolume50Button(){
        leftMenuContentView.addSubview(leftMenuVolume50Button)
        leftMenuVolume50Button.setTop(equalTo: leftMenuVolume30Button.bottomAnchor, constant: 20)
        leftMenuVolume50Button.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 10)
        leftMenuVolume50Button.setRight(equalTo: leftMenuContentView.rightAnchor, constant: 10)
        leftMenuVolume50Button.setHeight(height: 20)
    }
    func setleftMenuVolume100Button(){
        leftMenuContentView.addSubview(leftMenuVolume100Button)
        leftMenuVolume100Button.setTop(equalTo: leftMenuVolume50Button.bottomAnchor, constant: 20)
        leftMenuVolume100Button.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 10)
        leftMenuVolume100Button.setRight(equalTo: leftMenuContentView.rightAnchor, constant: 10)
        leftMenuVolume100Button.setHeight(height: 20)
    }
    
    
}
