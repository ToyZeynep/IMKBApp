//
//  LeftMenuViewModelImpl.swift
//  IMKBApp
//
//  Created by MacOS on 18.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import XCoordinator
import Action

class LeftMenuViewModelImpl: LeftMenuViewModel, LeftMenuViewModelInput, LeftMenuViewModelOutput , LeftMenuViewModelStoredProperties {

    let disposeBag = DisposeBag()
    
    // MARK: -Inputs-

    // MARK: -Actions-

    // MARK: -Outputs-
    var stockListResponse = PublishSubject<StockListResponse>()
    var stockList = PublishSubject<[Stocks]>()
    
    // MARK: -Stored properties-
    private let router: UnownedRouter<LeftMenuRoute>
    var stockListUseCase = StockListUseCase()
    var handshakeResponse: HandshakeResponse
    
    // MARK: -Initialization-
    init(router: UnownedRouter<LeftMenuRoute> , handshakeResponse : HandshakeResponse) {
        self.router = router
        self.handshakeResponse = handshakeResponse
    }
    
    func dismiss() {
        router.trigger(.dismiss)
    }
}
