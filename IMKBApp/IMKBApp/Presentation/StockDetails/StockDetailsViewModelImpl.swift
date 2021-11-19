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

class StockDetailsViewModelImpl: StockDetailsViewModel, StockDetailsViewModelInput, StockDetailsViewModelOutput , StockDetailsViewModelStoredProperties {
    
    
    let disposeBag = DisposeBag()
    
    // MARK: -Inputs-
    
    
    // MARK: -Actions-
    

    
    // MARK: -Outputs-
    var id = BehaviorSubject<Int>(value: 0)
    var isDown = BehaviorSubject<Bool>(value: true)
    var isUp = BehaviorSubject<Bool>(value: true)
    var bid = BehaviorSubject<String>(value: "")
    var channge = BehaviorSubject<String>(value: "")
    var count = BehaviorSubject<String>(value: "")
    var difference = BehaviorSubject<String>(value: "")
    var offer = BehaviorSubject<String>(value: "")
    var highest = BehaviorSubject<String>(value: "")
    var lowest = BehaviorSubject<String>(value: "")
    var maximum = BehaviorSubject<String>(value: "")
    var minimum = BehaviorSubject<String>(value: "")
    var price = BehaviorSubject<String>(value: "")
    var volume = BehaviorSubject<String>(value: "")
    var symbol = BehaviorSubject<String>(value: "")
  //  var graphicData = BehaviorSubject<[GraphicData]> (value: )
    
    // MARK: -Stored properties-
    var stockDetailsUseCase = StockDetailsUseCase()
    var router: UnownedRouter<StockListRoute>
    var stockId: Int
    var handshakeResponse: HandshakeResponse
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<StockListRoute>, stockId: Int, handshakeResponse: HandshakeResponse) {
        self.router = router
        self.stockId = stockId
        self.handshakeResponse = handshakeResponse
        
        fetchStockDetails(id: handshakeResponse.getStockId(id: stockId))
    }
    
    
    func fetchStockDetails(id: String) {
        var params: [String: Any] = [String: Any]()
        params["id"] = id
        stockDetailsUseCase.stockDetails(params: params).subscribe(onNext: { response in
            self.setStockDetails(stockDetails: response)
        }).disposed(by: disposeBag)
    }
   
    func setStockDetails(stockDetails: StockDetailsResponse) {
        isDown.onNext(stockDetails.isDown!)
        isUp.onNext(stockDetails.isUp!)
        bid.onNext("Alış: " + stockDetails.bid!.toString())
        channge.onNext(stockDetails.channge!.toString())
        difference.onNext(stockDetails.difference!.toString())
        offer.onNext(stockDetails.offer!.toString())
        count.onNext(stockDetails.count!.toString())
        highest.onNext(stockDetails.highest!.toString())
        lowest.onNext(stockDetails.lowest!.toString())
        minimum.onNext(stockDetails.minimum!.toString())
        maximum.onNext(stockDetails.maximum!.toString())
        price.onNext(stockDetails.price!.toString())
        volume.onNext(stockDetails.volume!.toString())
        symbol.onNext(self.handshakeResponse.getSymbol(symbol: stockDetails.symbol!))
        //    graphicData.onNext(stockDetails.graphicData!)
    }
}
