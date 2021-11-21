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
    
    // MARK: -Inputs-
    private(set) lazy var selectedStock = selectedStockActions.inputs
    private(set) lazy var showLeftMenu = showLeftMenuCoordinator.inputs
    
    // MARK: -Actions-
    lazy var selectedStockActions = Action<Stocks, Void> { [unowned self] stock in
        self.router.rx.trigger(.stockDetail(stockId: stock.id!, handshakeRespose: handshakeResponse))
    }
    
    lazy var showLeftMenuCoordinator = Action<Bool, Void> { [unowned self] success in
        let subject = PublishSubject<Void>()
        subject.subscribe(onNext: {
            if UserDefaults.standard.string(forKey: "PeriodTag") != "" {
                if UserDefaults.standard.string(forKey: "PeriodTag") != UserDefaults.standard.string(forKey: "LastPeriod") {
                    let periodTag = UserDefaults.standard.string(forKey: "PeriodTag")
                    UserDefaults.standard.set(periodTag, forKey: "LastPeriod")
                    fetchStockList(handshakeResponse: handshakeResponse, periodTag: periodTag!)
                }
            }
        }).disposed(by: self.disposeBag)
        return self.router.rx.trigger(.leftMenu(handshakeRespose: handshakeResponse, subject))
    }
    
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
        self.fetchStockList(handshakeResponse: handshakeResponse, periodTag: PeriodTag.all.rawValue)
    }
    
    func fetchStockList(handshakeResponse: HandshakeResponse ,periodTag: String ) {
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
