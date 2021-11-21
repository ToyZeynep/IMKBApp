//
//  StockListViewExt.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import UIKit

extension StockListView {
    func setStockListContentView()  {
        addSubview(stockListContentView)
        if #available(iOS 11.0, *) {
            stockListContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        }
        stockListContentView.setLeft(equalTo: leftAnchor)
        stockListContentView.setRight(equalTo: rightAnchor)
        stockListContentView.setBottom(equalTo: bottomAnchor)
        
        setStockListToolBarView()
        setStockListSearchTextField()
        setstockListTableView()
    }
    
    func setStockListToolBarView(){
        stockListContentView.addSubview(stockListToolBarView)
        stockListToolBarView.setTop(equalTo: stockListContentView.topAnchor, constant: 0)
        stockListToolBarView.setRight(equalTo: stockListContentView.rightAnchor, constant: 0)
        stockListToolBarView.setLeft(equalTo: stockListContentView.leftAnchor, constant: 0)
        stockListToolBarView.setHeight(height: 50)
        
        setStockListLeftMenuButton()
        setStockListTopLabel()
    }
    func setStockListLeftMenuButton(){
        stockListToolBarView.addSubview(stockListLeftMenuButton)
        stockListLeftMenuButton.setTop(equalTo: stockListToolBarView.topAnchor, constant: 5)
        stockListLeftMenuButton.setLeft(equalTo: stockListToolBarView.leftAnchor, constant: 5)
        stockListLeftMenuButton.setBottom(equalTo: stockListToolBarView.bottomAnchor, constant: -5)
    }
    
    func setStockListTopLabel(){
        stockListToolBarView.addSubview(stockListTopLabel)
        stockListTopLabel.setTop(equalTo: stockListToolBarView.topAnchor, constant: 5)
        stockListTopLabel.setLeft(equalTo: stockListLeftMenuButton.rightAnchor, constant: 10)
        stockListTopLabel.setBottom(equalTo: stockListToolBarView.bottomAnchor, constant: -5)
    }
    
    func setStockListSearchTextField(){
        stockListContentView.addSubview(stockListSearchTextField)
        stockListSearchTextField.setTop(equalTo: stockListToolBarView.bottomAnchor, constant: 10)
        stockListSearchTextField.setRight(equalTo: stockListContentView.rightAnchor, constant: -5)
        stockListSearchTextField.setLeft(equalTo: stockListContentView.leftAnchor, constant: 5)
    }
    
    func setstockListTableView(){
        stockListContentView.addSubview(stockListTableView)
        stockListTableView.setTop(equalTo: stockListSearchTextField.bottomAnchor )
        stockListTableView.setRight(equalTo: stockListContentView.rightAnchor)
        stockListTableView.setLeft(equalTo: stockListContentView.leftAnchor)
        stockListTableView.setBottom(equalTo: stockListContentView.bottomAnchor)
    }
    
}
