//
//  LeftManuViewModel.swift
//  IMKBApp
//
//  Created by MacOS on 18.11.2021.
//
import Foundation
import RxSwift
import XCoordinator
import Action

protocol LeftMenuViewModelInput {
    

}

protocol LeftMenuViewModelOutput {
    var stockListResponse: PublishSubject<StockListResponse> { get }
    var stockList: PublishSubject<[Stocks]> { get }
}

protocol LeftMenuViewModelStoredProperties {
    var stockListUseCase : StockListUseCase { get }
    var handshakeResponse : HandshakeResponse { get }
}
protocol LeftMenuViewModel{
    var input: LeftMenuViewModelInput { get }
    var output: LeftMenuViewModelOutput { get }
    var storedProperties : LeftMenuViewModelStoredProperties { get }
    
    func fetchStockList(handshakeResponse: HandshakeResponse ,periodTag: String )
    func dismiss()
    
}

extension LeftMenuViewModel where Self:  LeftMenuViewModelInput & LeftMenuViewModelOutput & LeftMenuViewModelStoredProperties {
    var input: LeftMenuViewModelInput { return self }
    var output: LeftMenuViewModelOutput { return self }
    var storedProperties : LeftMenuViewModelStoredProperties { return self  }
}
