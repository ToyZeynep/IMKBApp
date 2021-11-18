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
        if #available(iOS 11.0, *) {
            leftMenuContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        } else {
        }
        leftMenuContentView.setLeft(equalTo: leftAnchor)
        leftMenuContentView.setRight(equalTo: rightAnchor , constant: -100)
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
        leftMenuToolBarView.setLeft(equalTo: leftMenuContentView.leftAnchor)
        leftMenuToolBarView.setRight(equalTo: leftMenuContentView.rightAnchor)
        
        setLeftMenuImageView()
        setLeftMenuTitleLabel()
        setLeftMenuSubTitleLabel()
    }
    
    func setLeftMenuImageView(){
        leftMenuToolBarView.addSubview(leftMenuImageView)
        leftMenuImageView.setTop(equalTo: leftMenuToolBarView.topAnchor, constant: 15)
        leftMenuImageView.setLeft(equalTo: leftMenuToolBarView.leftAnchor, constant: 15)
        leftMenuImageView.setHeight(height: 100)
        leftMenuImageView.setWidth(width: 100)
    }
    
    func setLeftMenuTitleLabel(){
        leftMenuToolBarView.addSubview(leftMenuTitleLabel)
        leftMenuTitleLabel.setTop(equalTo: leftMenuImageView.bottomAnchor, constant: 10)
        leftMenuTitleLabel.setLeft(equalTo: leftMenuToolBarView.leftAnchor, constant: 15)
    }
    
    func setLeftMenuSubTitleLabel() {
        leftMenuToolBarView.addSubview(leftMenuSubTitleLabel)
        leftMenuSubTitleLabel.setTop(equalTo: leftMenuTitleLabel.bottomAnchor, constant: 10)
        leftMenuSubTitleLabel.setLeft(equalTo: leftMenuToolBarView.leftAnchor, constant: 15)
        leftMenuSubTitleLabel.setBottom(equalTo: leftMenuToolBarView.bottomAnchor, constant: -10)
    }
    
    
    func setleftMenuAllStocksButton(){
        leftMenuContentView.addSubview(leftMenuAllStocksButton)
        leftMenuAllStocksButton.setTop(equalTo: leftMenuToolBarView.bottomAnchor, constant: 20)
        leftMenuAllStocksButton.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 15)
        leftMenuAllStocksButton.setRight(equalTo: leftMenuContentView.rightAnchor)
        leftMenuAllStocksButton.setHeight(height: 50)
    }
    func setleftMenuIncreasingButton(){
        leftMenuContentView.addSubview(leftMenuIncreasingButton)
        leftMenuIncreasingButton.setTop(equalTo: leftMenuAllStocksButton.bottomAnchor, constant: 10)
        leftMenuIncreasingButton.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 15)
        leftMenuIncreasingButton.setRight(equalTo: leftMenuContentView.rightAnchor)
        leftMenuIncreasingButton.setHeight(height: 50)
    }
    func setleftMenuDecreasingButton(){
        leftMenuContentView.addSubview(leftMenuDecreasingButton)
        leftMenuDecreasingButton.setTop(equalTo: leftMenuIncreasingButton.bottomAnchor, constant: 10)
        leftMenuDecreasingButton.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 15)
        leftMenuDecreasingButton.setRight(equalTo: leftMenuContentView.rightAnchor)
        leftMenuDecreasingButton.setHeight(height: 50)
    }
    
    func setleftMenuVolume30Button(){
        leftMenuContentView.addSubview(leftMenuVolume30Button)
        leftMenuVolume30Button.setTop(equalTo: leftMenuDecreasingButton.bottomAnchor, constant: 10)
        leftMenuVolume30Button.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 15)
        leftMenuVolume30Button.setRight(equalTo: leftMenuContentView.rightAnchor)
        leftMenuVolume30Button.setHeight(height: 50)
    }
    func setleftMenuVolume50Button(){
        leftMenuContentView.addSubview(leftMenuVolume50Button)
        leftMenuVolume50Button.setTop(equalTo: leftMenuVolume30Button.bottomAnchor, constant: 10)
        leftMenuVolume50Button.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 15)
        leftMenuVolume50Button.setRight(equalTo: leftMenuContentView.rightAnchor)
        leftMenuVolume50Button.setHeight(height: 50)
    }
    func setleftMenuVolume100Button(){
        leftMenuContentView.addSubview(leftMenuVolume100Button)
        leftMenuVolume100Button.setTop(equalTo: leftMenuVolume50Button.bottomAnchor, constant: 10)
        leftMenuVolume100Button.setLeft(equalTo: leftMenuContentView.leftAnchor, constant: 15)
        leftMenuVolume100Button.setRight(equalTo: leftMenuContentView.rightAnchor)
        leftMenuVolume100Button.setHeight(height: 50)
    }
    
    
}
