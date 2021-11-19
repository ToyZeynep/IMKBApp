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
        stockDetailsContentView.backgroundColor = .red
        addSubview(stockDetailsContentView)
        if #available(iOS 11.0, *) {
            stockDetailsContentView.setTop(equalTo: safeAreaLayoutGuide.topAnchor)
        } else {
        }
        stockDetailsContentView.setLeft(equalTo: leftAnchor)
        stockDetailsContentView.setRight(equalTo: rightAnchor)
        stockDetailsContentView.setHeight(height: 300)
        
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
     //  setStockDetailsVariationLabel()
       
    }

    func setDetailsSymbolLabel(){
        stockDetailsContentView.addSubview(stockDetailsSymbolLabel)
        stockDetailsSymbolLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsSymbolLabel.setRight(equalTo: stockDetailsContentView.centerXAnchor , constant: -10)
        stockDetailsSymbolLabel.setTop(equalTo: stockDetailsContentView.topAnchor, constant: 10)
       // stockDetailsSymbolLabel.setWidth(width: 20)
    }
    func setStockDetailsPriceLabel(){
        stockDetailsContentView.addSubview(stockDetailsPriceLabel)
        stockDetailsPriceLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsPriceLabel.setRight(equalTo: stockDetailsContentView.centerXAnchor , constant: -10)
        stockDetailsPriceLabel.setTop(equalTo: stockDetailsSymbolLabel.bottomAnchor, constant: 10)
       // stockDetailsPriceLabel.setWidth(width: 20)
    }
    
    func setStockDetailsDifferenceLabel(){
        stockDetailsContentView.addSubview(stockDetailsDifferenceLabel)
        stockDetailsDifferenceLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsDifferenceLabel.setRight(equalTo: stockDetailsContentView.centerXAnchor, constant: -10)
        stockDetailsDifferenceLabel.setTop(equalTo: stockDetailsPriceLabel.bottomAnchor, constant: 10)
      //  stockDetailsDifferenceLabel.setWidth(width: 20)
    }
    func setStockDetailsVolumeLabel(){
        stockDetailsContentView.addSubview(stockDetailsVolumeLabel)
        stockDetailsVolumeLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsVolumeLabel.setTop(equalTo: stockDetailsDifferenceLabel.bottomAnchor, constant: 10)
        stockDetailsVolumeLabel.setRight(equalTo: stockDetailsContentView.centerXAnchor, constant: -10)
       // stockDetailsVolumeLabel.setWidth(width: 20)
    }
    
    func setStockDetailsBidLabel(){
        stockDetailsContentView.addSubview(stockDetailsBidLabel)
        stockDetailsBidLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsBidLabel.setRight(equalTo: stockDetailsContentView.centerXAnchor, constant: -10)
        stockDetailsBidLabel.setTop(equalTo: stockDetailsVolumeLabel.bottomAnchor, constant: 10 )
      //  stockDetailsBidLabel.setWidth(width: 20)
    }
    
    func setStockDetailsOfferLabel(){
        stockDetailsContentView.addSubview(stockDetailsOfferLabel)
        stockDetailsOfferLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsOfferLabel.setTop(equalTo: stockDetailsBidLabel.bottomAnchor, constant: 10)
        stockDetailsOfferLabel.setRight(equalTo: stockDetailsContentView.centerXAnchor, constant: -10)
       // stockDetailsOfferLabel.setWidth(width: 20)
    }
    func setStockDetailsMinimumLabel(){
        stockDetailsContentView.addSubview(stockDetailsMinimumLabel)
        stockDetailsOfferLabel.setTop(equalTo: stockDetailsContentView.topAnchor, constant: 10)
        stockDetailsOfferLabel.setLeft(equalTo: stockDetailsContentView.centerXAnchor, constant: 10)
        stockDetailsOfferLabel.setRight(equalTo: stockDetailsContentView.rightAnchor , constant: -10)
      //  stockDetailsOfferLabel.setWidth(width: 20)
    }

    func setStockDetailsMaximumLabel(){
        stockDetailsContentView.addSubview(stockDetailsMaximumLabel)
        stockDetailsMaximumLabel.setTop(equalTo: stockDetailsMinimumLabel.bottomAnchor, constant: 10)
        stockDetailsMaximumLabel.setLeft(equalTo: stockDetailsContentView.centerXAnchor, constant: 10)
        stockDetailsMaximumLabel.setRight(equalTo: stockDetailsContentView.rightAnchor , constant: -10)
       // stockDetailsMaximumLabel.setWidth(width: 20)
    }

    func setStockDetailsCountLabel(){
        stockDetailsContentView.addSubview(stockDetailsCountLabel)
        stockDetailsCountLabel.setTop(equalTo: stockDetailsMaximumLabel.bottomAnchor, constant: 10)
        stockDetailsCountLabel.setLeft(equalTo: stockDetailsContentView.centerXAnchor, constant: 10)
        stockDetailsCountLabel.setRight(equalTo: stockDetailsContentView.rightAnchor , constant: -10)
     //   stockDetailsCountLabel.setWidth(width: 20)
        
    }

    func setStockDetailsHighestLabel(){
        stockDetailsContentView.addSubview(stockDetailsHighestLabel)
        stockDetailsHighestLabel.setTop(equalTo: stockDetailsCountLabel.bottomAnchor, constant: 10)
        stockDetailsHighestLabel.setLeft(equalTo: stockDetailsContentView.centerXAnchor, constant: 10)
        stockDetailsHighestLabel.setRight(equalTo: stockDetailsContentView.rightAnchor , constant: -10)
       // stockDetailsHighestLabel.setWidth(width: 20)
    }

    func setStockDetailsLowestLabel(){
        stockDetailsContentView.addSubview(stockDetailsLowestLabel)
        stockDetailsLowestLabel.setTop(equalTo: stockDetailsHighestLabel.bottomAnchor, constant: 20)
        stockDetailsLowestLabel.setLeft(equalTo: stockDetailsContentView.centerXAnchor, constant: 10)
        stockDetailsLowestLabel.setRight(equalTo: stockDetailsContentView.rightAnchor , constant: -10)
      //  stockDetailsLowestLabel.setWidth(width: 20)
    }

    func setStockDetailsVariationLabel(){
        stockDetailsContentView.addSubview(stockDetailsOfferLabel)
        stockDetailsVariationLabel.setTop(equalTo: stockDetailsLowestLabel.bottomAnchor, constant: 10)
        stockDetailsVariationLabel.setLeft(equalTo: stockDetailsContentView.centerXAnchor, constant: 10)
        stockDetailsVariationLabel.setRight(equalTo: stockDetailsContentView.rightAnchor , constant: -10)
      //  stockDetailsVariationLabel.setWidth(width: 20)
    }
    
    func setGraphicToolbarView(){
        stockDetailsGraphicToolBarView.backgroundColor = .green
        addSubview(stockDetailsGraphicToolBarView)
        stockDetailsGraphicToolBarView.setTop(equalTo: stockDetailsContentView.bottomAnchor, constant: 10)
        stockDetailsGraphicToolBarView.setLeft(equalTo: leftAnchor)
        stockDetailsGraphicToolBarView.setRight(equalTo: rightAnchor)
        stockDetailsGraphicToolBarView.setBottom(equalTo: bottomAnchor)
    }

    










}

