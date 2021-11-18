//
//  StockListViewModelImpl.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import XCoordinator
import Action

class StockListViewModelImpl: StockListViewModel, StockListViewModelInput, StockListViewModelOutput , StockListViewModelStoredProperties {

    


    let disposeBag = DisposeBag()
    
    // MARK: -Inputs
    

    
    // MARK: -Actions-

    
    // MARK: -Outputs-
    
    var stockListResponse = PublishSubject<StockListResponse>()
   
    var stockList = PublishSubject<[Stocks]>()

    // MARK: -Stored properties-
    
    private let router: UnownedRouter<StockListRoute>
     var stockListUseCase = StockListUseCase()
     var handshakeResponse : HandshakeResponse
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<StockListRoute>, handshakeResponse : HandshakeResponse ) {
        self.router = router
        self.handshakeResponse = handshakeResponse
        UserDefaults.standard.set(handshakeResponse.authorization, forKey: "Authorization")
        fetchStockList(handshakeResponse: handshakeResponse)
    }
    
    
    func fetchStockList(handshakeResponse: HandshakeResponse) {
        var params: [String: Any] = [String: Any]()
        params["period"] = handshakeResponse.getPeriodParameter(periodTag: "all")
        
        stockListUseCase.stockList(params: params).subscribe(onNext: { response in
            if (response.status?.isSuccess)! {
                self.stockList.onNext(response.stocks!)
            } else {
                print(response.status?.error?.message)
            }
        }).disposed(by: disposeBag)
    }
   
}
