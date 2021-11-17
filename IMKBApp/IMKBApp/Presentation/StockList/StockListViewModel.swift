//
//  StockListViewModel.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import RxSwift
import XCoordinator
import Action

protocol StockListViewModelInput {
    
    var selectedStock: AnyObserver<Stocks> { get }
}

protocol StockListViewModelOutput {
    var stockListResponse: PublishSubject<StockListResponse> { get }
    var stockList: PublishSubject<[Stocks]> { get }
   
}

protocol StockListViewModelStoredProperties {
    var stockListUseCase : StockListUseCase { get }
    
}
protocol StockListViewModel{
    var input: StockListViewModelInput { get }
    var output: StockListViewModelOutput { get }
    var storedProperties : StockListViewModelStoredProperties { get }
    
}

extension StockListViewModel where Self:  StockListViewModelInput & StockListViewModelOutput & StockListViewModelStoredProperties {
    var input: StockListViewModelInput { return self }
    var output: StockListViewModelOutput { return self }
    var storedProperties : StockListViewModelStoredProperties { return self  }
}
