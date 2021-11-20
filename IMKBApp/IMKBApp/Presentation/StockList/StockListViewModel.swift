//
//  StockListViewModel.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import RxSwift
import Action

protocol StockListViewModelInput {
    var selectedStock: AnyObserver<Stocks> { get }
    var showLeftMenu: AnyObserver<Bool> { get }
}

protocol StockListViewModelOutput {
    var stockListResponse: PublishSubject<StockListResponse> { get }
    var stockList: PublishSubject<[Stocks]> { get }
}

protocol StockListViewModelStoredProperties {
    var stockListUseCase: StockListUseCase { get }
    var handshakeResponse: HandshakeResponse { get }
}

protocol StockListViewModel{
    var input: StockListViewModelInput { get }
    var output: StockListViewModelOutput { get }
    var storedProperties: StockListViewModelStoredProperties { get }
    
    func fetchStockList(handshakeResponse: HandshakeResponse, periodTag: String )
    func toLeftMenu()
}

extension StockListViewModel where Self:  StockListViewModelInput & StockListViewModelOutput & StockListViewModelStoredProperties {
    var input: StockListViewModelInput { return self }
    var output: StockListViewModelOutput { return self }
    var storedProperties: StockListViewModelStoredProperties { return self  }
}
