//
//  StockListCellExt.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
extension StockListCell {
    func setStockListCellContentView (){
        addSubview(stockListCellContentView )
        stockListCellContentView.setRight(equalTo: rightAnchor)
        stockListCellContentView.setLeft(equalTo: leftAnchor)
        stockListCellContentView.setTop(equalTo: topAnchor)
        stockListCellContentView.setBottom(equalTo: bottomAnchor)
        
    }
    func setStockListCellSymbolLabel(){
        stockListCellContentView.addSubview(stockListCellSymbolLabel)
        stockListCellSymbolLabel.setLeft(equalTo: stockListCellContentView.leftAnchor , constant: 10)
        stockListCellSymbolLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellSymbolLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
    }
    func setStockListCellDifferenceLabel(){
        stockListCellContentView.addSubview(stockListCellDifferenceLabel)
        stockListCellDifferenceLabel.setLeft(equalTo: stockListCellSymbolLabel.rightAnchor , constant: 10)
        stockListCellDifferenceLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellDifferenceLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
    }
    
    func setStockListCellVolumeLabel(){
        stockListCellContentView.addSubview(stockListCellVolumeLabel)
        stockListCellVolumeLabel.setLeft(equalTo: stockListCellDifferenceLabel.rightAnchor , constant: 10)
        stockListCellVolumeLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellVolumeLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
    }
    
    func setStockListCellPurchaseLabel(){
        stockListCellContentView.addSubview(stockListCellPurchaseLabel)
        stockListCellPurchaseLabel.setLeft(equalTo: stockListCellVolumeLabel.rightAnchor , constant: 10)
        stockListCellPurchaseLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellPurchaseLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
    }
    
    func setStockListCellSalesLabel(){
        stockListCellContentView.addSubview(stockListCellSalesLabel)
        stockListCellSalesLabel.setLeft(equalTo: stockListCellPurchaseLabel.rightAnchor , constant: 10)
        stockListCellSalesLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellSalesLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
    }
    
    func setStockListCellVariationImageView(){
        stockListCellContentView.addSubview(stockListCellVariationImageView)
        stockListCellVariationImageView.setLeft(equalTo: stockListCellSalesLabel.rightAnchor, constant: 10)
        stockListCellVariationImageView.setRight(equalTo: stockListCellContentView.rightAnchor, constant: -10)
        stockListCellVariationImageView.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellVariationImageView.setBottom(equalTo: stockListCellContentView.bottomAnchor, constant: -10)
    }
}
