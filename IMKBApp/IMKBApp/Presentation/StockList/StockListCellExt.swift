//
//  StockListCellExt.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import UIKit
extension StockListCell {
    func setStockListCellContentView (){
        contentView.addSubview(stockListCellContentView )
        stockListCellContentView.setRight(equalTo: contentView.rightAnchor)
        stockListCellContentView.setLeft(equalTo: contentView.leftAnchor)
        stockListCellContentView.setTop(equalTo: contentView.topAnchor)
        stockListCellContentView.setBottom(equalTo: contentView.bottomAnchor)
        
        setStockListCellSymbolLabel()
        setStockListCellPriceLabel()
        setStockListCellDifferenceLabel()
        setStockListCellVolumeLabel()
        setStockListCellBidLabel()
        setStockListCellOfferLabel()
        setStockListCellVariationLabel()
    }
    func setStockListCellSymbolLabel(){
        stockListCellContentView.addSubview(stockListCellSymbolLabel)
        stockListCellSymbolLabel.setLeft(equalTo: stockListCellContentView.leftAnchor , constant: 10)
        stockListCellSymbolLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellSymbolLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
        stockListCellSymbolLabel.setWidth(width: (UIScreen.main.bounds.width - 40) / 7)
    }
    func setStockListCellPriceLabel(){
        stockListCellContentView.addSubview(stockListCellPriceLabel)
        stockListCellPriceLabel.setLeft(equalTo: stockListCellSymbolLabel.rightAnchor , constant: 10)
        stockListCellPriceLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellPriceLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
        stockListCellPriceLabel.setWidth(width: (UIScreen.main.bounds.width - 40) / 7)
    }
    
    func setStockListCellDifferenceLabel(){
        stockListCellContentView.addSubview(stockListCellDifferenceLabel)
        stockListCellDifferenceLabel.setLeft(equalTo: stockListCellPriceLabel.rightAnchor, constant: 10)
        stockListCellDifferenceLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellDifferenceLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
        stockListCellDifferenceLabel.setWidth(width: (UIScreen.main.bounds.width - 40) / 7)
    }
    func setStockListCellVolumeLabel(){
        stockListCellContentView.addSubview(stockListCellVolumeLabel)
        stockListCellVolumeLabel.setLeft(equalTo: stockListCellDifferenceLabel.rightAnchor , constant: 10)
        stockListCellVolumeLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellVolumeLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
        stockListCellVolumeLabel.setWidth(width: (UIScreen.main.bounds.width - 40) / 7)
    }
    
    func setStockListCellBidLabel(){
        stockListCellContentView.addSubview(stockListCellBidLabel)
        stockListCellBidLabel.setLeft(equalTo: stockListCellVolumeLabel.rightAnchor , constant: 10)
        stockListCellBidLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellBidLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
        stockListCellBidLabel.setWidth(width: (UIScreen.main.bounds.width - 40) / 7)
    }
    
    func setStockListCellOfferLabel(){
        stockListCellContentView.addSubview(stockListCellOfferLabel)
        stockListCellOfferLabel.setLeft(equalTo: stockListCellBidLabel.rightAnchor , constant: 10)
        stockListCellOfferLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellOfferLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor , constant: -10)
        stockListCellOfferLabel.setWidth(width: (UIScreen.main.bounds.width - 40) / 7)
    }
    
    func setStockListCellVariationLabel(){
        stockListCellContentView.addSubview(stockListCellVariationLabel)
        stockListCellVariationLabel.setLeft(equalTo: stockListCellOfferLabel.rightAnchor, constant: 10)
        stockListCellVariationLabel.setRight(equalTo: stockListCellContentView.rightAnchor, constant: -10)
        stockListCellVariationLabel.setTop(equalTo: stockListCellContentView.topAnchor, constant: 10)
        stockListCellVariationLabel.setBottom(equalTo: stockListCellContentView.bottomAnchor, constant: -10)
        stockListCellVariationLabel.setWidth(width: (UIScreen.main.bounds.width - 40) / 7)
    }
}
