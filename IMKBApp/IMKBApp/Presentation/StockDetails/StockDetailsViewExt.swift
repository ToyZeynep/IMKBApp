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
        setStockDetailsVariationImageView()
        setStockDetailsVariationLabel()
    }

    func setDetailsSymbolLabel(){
        stockDetailsContentView.addSubview(stockDetailsSymbolLabel)
        stockDetailsSymbolLabel.setTop(equalTo: stockDetailsContentView.topAnchor, constant: 10)
        stockDetailsSymbolLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
    }
    
    func setStockDetailsPriceLabel(){
        stockDetailsContentView.addSubview(stockDetailsPriceLabel)
        stockDetailsPriceLabel.setTop(equalTo: stockDetailsSymbolLabel.bottomAnchor, constant: 10)
        stockDetailsPriceLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
    }
    
    func setStockDetailsDifferenceLabel(){
        stockDetailsContentView.addSubview(stockDetailsDifferenceLabel)
        stockDetailsDifferenceLabel.setTop(equalTo: stockDetailsPriceLabel.bottomAnchor, constant: 10)
        stockDetailsDifferenceLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
    }
    
    func setStockDetailsVolumeLabel(){
        stockDetailsContentView.addSubview(stockDetailsVolumeLabel)
        stockDetailsVolumeLabel.setTop(equalTo: stockDetailsDifferenceLabel.bottomAnchor, constant: 10)
        stockDetailsVolumeLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
    }
    
    func setStockDetailsBidLabel(){
        stockDetailsContentView.addSubview(stockDetailsBidLabel)
        stockDetailsBidLabel.setTop(equalTo: stockDetailsVolumeLabel.bottomAnchor, constant: 10)
        stockDetailsBidLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
    }
    
    func setStockDetailsOfferLabel(){
        stockDetailsContentView.addSubview(stockDetailsOfferLabel)
        stockDetailsOfferLabel.setTop(equalTo: stockDetailsBidLabel.bottomAnchor, constant: 10)
        stockDetailsOfferLabel.setLeft(equalTo: stockDetailsContentView.leftAnchor, constant: 10)
        stockDetailsOfferLabel.setBottom(equalTo: stockDetailsContentView.bottomAnchor, constant: -10)
    }
    
    func setStockDetailsMinimumLabel(){
        stockDetailsContentView.addSubview(stockDetailsMinimumLabel)
        stockDetailsMinimumLabel.setTop(equalTo: stockDetailsContentView.topAnchor, constant: 10)
        stockDetailsMinimumLabel.setRight(equalTo: stockDetailsContentView.rightAnchor, constant: -10)
    }

    func setStockDetailsMaximumLabel(){
        stockDetailsContentView.addSubview(stockDetailsMaximumLabel)
        stockDetailsMaximumLabel.setTop(equalTo: stockDetailsMinimumLabel.bottomAnchor, constant: 10)
        stockDetailsMaximumLabel.setRight(equalTo: stockDetailsContentView.rightAnchor, constant: -10)
    }

    func setStockDetailsCountLabel(){
        stockDetailsContentView.addSubview(stockDetailsCountLabel)
        stockDetailsCountLabel.setTop(equalTo: stockDetailsMaximumLabel.bottomAnchor, constant: 10)
        stockDetailsCountLabel.setRight(equalTo: stockDetailsContentView.rightAnchor, constant: -10)
    }

    func setStockDetailsHighestLabel(){
        stockDetailsContentView.addSubview(stockDetailsHighestLabel)
        stockDetailsHighestLabel.setTop(equalTo: stockDetailsCountLabel.bottomAnchor, constant: 10)
        stockDetailsHighestLabel.setRight(equalTo: stockDetailsContentView.rightAnchor, constant: -10)
    }

    func setStockDetailsLowestLabel(){
        stockDetailsContentView.addSubview(stockDetailsLowestLabel)
        stockDetailsLowestLabel.setTop(equalTo: stockDetailsHighestLabel.bottomAnchor, constant: 10)
        stockDetailsLowestLabel.setRight(equalTo: stockDetailsContentView.rightAnchor , constant: -10)
    }

    func setStockDetailsVariationLabel(){
        stockDetailsContentView.addSubview(stockDetailsVariationLabel)
        stockDetailsVariationLabel.setTop(equalTo: stockDetailsLowestLabel.bottomAnchor, constant: 10)
        stockDetailsVariationLabel.setRight(equalTo: stockDetailsVariationImageView.leftAnchor, constant: -5)
        stockDetailsVariationLabel.setBottom(equalTo: stockDetailsContentView.bottomAnchor, constant: -10)
    }
    
    func setStockDetailsVariationImageView(){
        stockDetailsContentView.addSubview(stockDetailsVariationImageView)
        stockDetailsVariationImageView.setTop(equalTo: stockDetailsLowestLabel.bottomAnchor, constant: 10)
        stockDetailsVariationImageView.setRight(equalTo: stockDetailsContentView.rightAnchor, constant: -10)
        stockDetailsVariationImageView.setBottom(equalTo: stockDetailsContentView.bottomAnchor, constant: -10)
        stockDetailsVariationImageView.setWidth(width: 20)
    }
    
    func setGraphicToolbarView(){
        addSubview(stockDetailsGraphicToolBarView)
        stockDetailsGraphicToolBarView.setTop(equalTo: stockDetailsContentView.bottomAnchor, constant: 10)
        stockDetailsGraphicToolBarView.setLeft(equalTo: leftAnchor)
        stockDetailsGraphicToolBarView.setRight(equalTo: rightAnchor)
        stockDetailsGraphicToolBarView.setBottom(equalTo: bottomAnchor)
        
        setStockDetailsChartView()
    }

    func setStockDetailsChartView() {
        stockDetailsGraphicToolBarView.addSubview(stockDetailsChartView)
        stockDetailsChartView.setTop(equalTo: stockDetailsGraphicToolBarView.topAnchor)
        stockDetailsChartView.setLeft(equalTo: stockDetailsGraphicToolBarView.leftAnchor)
        stockDetailsChartView.setRight(equalTo: stockDetailsGraphicToolBarView.rightAnchor)
        stockDetailsChartView.setBottom(equalTo: stockDetailsGraphicToolBarView.bottomAnchor, constant: -20)
    }

}

