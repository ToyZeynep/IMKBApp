//
//  StockDetailsViewExt.swift
//  IMKBApp
//
//  Created by MacOS on 19.11.2021.
//

import Foundation
import UIKit
extension StockDetailsView {
    func setStockDetailsContentView()  {
        addSubview(stockDetailsContentView)
        if #available(iOS 11.0, *) {
            stockDetailsContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        } else {
        }
        stockDetailsContentView.setLeft(equalTo: leftAnchor)
        stockDetailsContentView.setRight(equalTo: rightAnchor)
        
        setDetailsSymbolLabel()
        setStockDetailsPriceLabel()
        setStockDetailsDifferenceLabel()
        setStockDetailsVolumeLabel()
        setStockDetailsBidLabel()
        setStockDetailsOfferLabel()
        setStockDetailsMinimumLabel()
        setStockDetailsMaximumLabel()
        setStockDetailsCountLabel()
        setStockDetailsHighestLabel()
        setStockDetailsLowestLabel()
        setStockDetailsVariationLabel()
        setStockDetailsVariationImageView()
       
    }

    func setDetailsSymbolLabel(){
        stockDetailsContentView.addSubview(stockDetailsSymbolLabel)
        stockDetailsSymbolLabel.setTop(equalTo: stockDetailsContentView.topAnchor, constant: 10)
        stockDetailsSymbolLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsSymbolLabel.setWidth(width: 115)
    }
    func setStockDetailsPriceLabel(){
        stockDetailsContentView.addSubview(stockDetailsPriceLabel)
        stockDetailsPriceLabel.setTop(equalTo: stockDetailsSymbolLabel.bottomAnchor, constant: 10)
        stockDetailsPriceLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsPriceLabel.setWidth(width: 120)
    }
    
    func setStockDetailsDifferenceLabel(){
        stockDetailsContentView.addSubview(stockDetailsDifferenceLabel)
        stockDetailsDifferenceLabel.setTop(equalTo: stockDetailsPriceLabel.bottomAnchor, constant: 10)
        stockDetailsDifferenceLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsDifferenceLabel.setWidth(width: 120)
    }
    func setStockDetailsVolumeLabel(){
        stockDetailsContentView.addSubview(stockDetailsVolumeLabel)
        stockDetailsVolumeLabel.setTop(equalTo: stockDetailsDifferenceLabel.bottomAnchor, constant: 10)
        stockDetailsVolumeLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsVolumeLabel.setWidth(width: 120)
    }
    
    func setStockDetailsBidLabel(){
        stockDetailsContentView.addSubview(stockDetailsBidLabel)
        stockDetailsBidLabel.setTop(equalTo: stockDetailsVolumeLabel.bottomAnchor, constant: 10)
        stockDetailsBidLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsBidLabel.setWidth(width: 120)
    }
    
    func setStockDetailsOfferLabel(){
        stockDetailsContentView.addSubview(stockDetailsOfferLabel)
        stockDetailsOfferLabel.setTop(equalTo: stockDetailsBidLabel.bottomAnchor, constant: 10)
        stockDetailsOfferLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsOfferLabel.setBottom(equalTo: stockDetailsContentView.bottomAnchor, constant: -10)
        stockDetailsOfferLabel.setWidth(width: 120)
    }
    func setStockDetailsMinimumLabel(){
        stockDetailsContentView.addSubview(stockDetailsMinimumLabel)
        stockDetailsMinimumLabel.setTop(equalTo: stockDetailsContentView.topAnchor, constant: 10)
        stockDetailsMinimumLabel.setRight(equalTo: stockDetailsContentView.rightAnchor)
        stockDetailsMinimumLabel.setWidth(width: 165)
    }

    func setStockDetailsMaximumLabel(){
        stockDetailsContentView.addSubview(stockDetailsMaximumLabel)
        stockDetailsMaximumLabel.setTop(equalTo: stockDetailsMinimumLabel.bottomAnchor, constant: 10)
        stockDetailsMaximumLabel.setRight(equalTo: stockDetailsContentView.rightAnchor)
        stockDetailsMaximumLabel.setWidth(width: 150)
    }

    func setStockDetailsCountLabel(){
        stockDetailsContentView.addSubview(stockDetailsCountLabel)
        stockDetailsCountLabel.setTop(equalTo: stockDetailsMaximumLabel.bottomAnchor, constant: 10)
        stockDetailsCountLabel.setRight(equalTo: stockDetailsContentView.rightAnchor, constant: -10)
        stockDetailsCountLabel.setWidth(width: 140)
        
    }

    func setStockDetailsHighestLabel(){
        stockDetailsContentView.addSubview(stockDetailsHighestLabel)
        stockDetailsHighestLabel.setTop(equalTo: stockDetailsCountLabel.bottomAnchor, constant: 10)
        stockDetailsHighestLabel.setRight(equalTo: stockDetailsContentView.rightAnchor, constant: -10)
        stockDetailsHighestLabel.setWidth(width: 140)
    }

    func setStockDetailsLowestLabel(){
        stockDetailsContentView.addSubview(stockDetailsLowestLabel)
        stockDetailsLowestLabel.setTop(equalTo: stockDetailsHighestLabel.bottomAnchor, constant: 10)
        stockDetailsLowestLabel.setRight(equalTo: stockDetailsContentView.rightAnchor , constant: -10)
        stockDetailsLowestLabel.setWidth(width: 140)
    }

    func setStockDetailsVariationLabel(){
        stockDetailsContentView.addSubview(stockDetailsVariationLabel)
        stockDetailsVariationLabel.setTop(equalTo: stockDetailsLowestLabel.bottomAnchor, constant: 10)
     //   stockDetailsVariationLabel.setRight(equalTo: stockDetailsContentView.rightAnchor, constant: -10)
        stockDetailsVariationLabel.setBottom(equalTo: stockDetailsContentView.bottomAnchor, constant: -10)
        stockDetailsVariationLabel.setWidth(width: 100)
    }
    func setStockDetailsVariationImageView(){
        stockDetailsContentView.addSubview(stockDetailsVariationImageView)
        stockDetailsVariationImageView.setTop(equalTo: stockDetailsLowestLabel.bottomAnchor, constant: 10)
        stockDetailsVariationImageView.setLeft(equalTo: stockDetailsVariationLabel.rightAnchor)
        stockDetailsVariationImageView.setRight(equalTo: stockDetailsContentView.rightAnchor, constant: -10)
        stockDetailsVariationImageView.setBottom(equalTo: stockDetailsContentView.bottomAnchor, constant: -10)
        stockDetailsVariationImageView.setWidth(width: 40)
      //  stockDetailsVariationImageView.setHeight(height: 30)
        
    }
    
    
    func setGraphicToolbarView(){
        addSubview(stockDetailsGraphicToolBarView)
        stockDetailsGraphicToolBarView.setTop(equalTo: stockDetailsContentView.bottomAnchor, constant: 10)
        stockDetailsGraphicToolBarView.setLeft(equalTo: leftAnchor)
        stockDetailsGraphicToolBarView.setRight(equalTo: rightAnchor)
        stockDetailsGraphicToolBarView.setBottom(equalTo: bottomAnchor)
    }

    










}

