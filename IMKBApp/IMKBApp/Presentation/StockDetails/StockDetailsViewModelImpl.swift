//
//  StockDetailsViewModelImpl.swift
//  IMKBApp
//
//  Created by MacOS on 19.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import XCoordinator
import Action

class StockDetailsViewModelImpl: StockDetailsViewModel, StockDetailsViewModelInput, StockDetailsViewModelOutput {
    var status: BehaviorSubject<Status>
    
    var graphicData: BehaviorSubject<[GraphicData]>
    
    
    
    var isDown = BehaviorSubject<Bool> (value: true)
    var isUp = BehaviorSubject<Bool>  (value: true)
    var bid = BehaviorSubject<Double>  (value: 0)
    var channge = BehaviorSubject<Double> (value: 0)
    var count = BehaviorSubject<Int>  (value: 0)
    var difference = BehaviorSubject<Double>  (value: 0)
    var offer = BehaviorSubject<Double> (value: 0)
    var highest = BehaviorSubject<Double>  (value: 0)
    var lowest = BehaviorSubject<Double>  (value: 0)
    var maximum = BehaviorSubject<Double>  (value: 0)
    var minimum = BehaviorSubject<Double>  (value: 0)
    var price = BehaviorSubject<Double>  (value: 0)
    var volume = BehaviorSubject<Double>  (value: 0)
    var symbol = BehaviorSubject<String>  (value: "")
  //  var graphicData = BehaviorSubject<[GraphicData]> (value: )
    
  
    let disposeBag = DisposeBag()
    
    // MARK: -Inputs-
    
    
    // MARK: -Actions-
    

    
    // MARK: -Outputs-
    var id = BehaviorSubject<Int>(value: 0)
    
    // MARK: -Stored properties-
    
    private let router: UnownedRouter<StockListRoute>
    private let stockDetails : StockDetailsResponse
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<StockListRoute> , stockDetails: StockDetailsResponse) {
        self.router = router
        self.stockDetails = stockDetails
    }
    
    func setStockDetail() {
        isDown.onNext(stockDetails.isDown!)
        isUp.onNext(stockDetails.isUp!)
        bid.onNext(stockDetails.bid!)
        channge.onNext(stockDetails.channge!)
        difference.onNext(stockDetails.difference!)
        offer.onNext(stockDetails.offer!)
        highest.onNext(stockDetails.highest!)
        lowest.onNext(stockDetails.lowest!)
        minimum.onNext(stockDetails.minimum!)
        maximum.onNext(stockDetails.maximum!)
        price.onNext(stockDetails.price!)
        volume.onNext(stockDetails.volume!)
        symbol.onNext(stockDetails.symbol!)
        status.onNext(stockDetails.status!)
    //    graphicData.onNext(stockDetails.graphicData!)
        
    }
}
