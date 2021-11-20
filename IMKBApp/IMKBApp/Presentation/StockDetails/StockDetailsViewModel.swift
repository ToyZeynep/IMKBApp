//
//  StockDetailsViewModel.swift
//  IMKBApp
//
//  Created by MacOS on 19.11.2021.
//

import Foundation
import RxSwift
import XCoordinator
import Action

protocol StockDetailsViewModelInput {
}

protocol StockDetailsViewModelOutput {
    var id : BehaviorSubject<Int> { get }
    var isDown :  BehaviorSubject<Bool> { get }
    var isUp : BehaviorSubject<Bool> { get }
    var bid : BehaviorSubject<String> { get }
    var channge : BehaviorSubject<String> { get }
    var count : BehaviorSubject<String> { get }
    var difference : BehaviorSubject<String> { get }
    var offer : BehaviorSubject<String> { get }
    var highest : BehaviorSubject<String> { get }
    var lowest : BehaviorSubject<String> { get }
    var maximum : BehaviorSubject<String> { get }
    var minimum : BehaviorSubject<String> { get }
    var price : BehaviorSubject<String> { get }
    var volume : BehaviorSubject<String> { get }
    var symbol : BehaviorSubject<String> { get }
    var graphicData : PublishSubject<[GraphicData]> { get }
}

protocol StockDetailsViewModelStoredProperties {
    var stockDetailsUseCase : StockDetailsUseCase { get }
    var handshakeResponse : HandshakeResponse { get }
    var stockId : Int { get }
   
}

protocol StockDetailsViewModel {
    var input: StockDetailsViewModelInput { get }
    var output: StockDetailsViewModelOutput { get }
    var storedProperties: StockDetailsViewModelStoredProperties { get }
    
    func fetchStockDetails(id: String)
    func setStockDetails(stockDetails: StockDetailsResponse)
    
}

extension StockDetailsViewModel where Self: StockDetailsViewModelInput & StockDetailsViewModelOutput & StockDetailsViewModelStoredProperties {
    var input: StockDetailsViewModelInput { return self }
    var output: StockDetailsViewModelOutput { return self }
    var storedProperties: StockDetailsViewModelStoredProperties { return self }
}
