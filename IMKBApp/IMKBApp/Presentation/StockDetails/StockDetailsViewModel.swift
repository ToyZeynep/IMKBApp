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
    var bid : BehaviorSubject<Double> { get }
    var channge : BehaviorSubject<Double> { get }
    var count : BehaviorSubject<Int> { get }
    var difference : BehaviorSubject<Double> { get }
    var offer : BehaviorSubject<Double> { get }
    var highest : BehaviorSubject<Double> { get }
    var lowest : BehaviorSubject<Double> { get }
    var maximum : BehaviorSubject<Double> { get }
    var minimum : BehaviorSubject<Double> { get }
    var price : BehaviorSubject<Double> { get }
    var volume : BehaviorSubject<Double> { get }
    var symbol : BehaviorSubject<String> { get }
 //   var graphicData : BehaviorSubject<[GraphicData]> { get }
}

protocol StockDetailsViewModel {
    var input: StockDetailsViewModelInput { get }
    var output: StockDetailsViewModelOutput { get }
}

extension StockDetailsViewModel where Self: StockDetailsViewModelInput & StockDetailsViewModelOutput {
    var input: StockDetailsViewModelInput { return self }
    var output: StockDetailsViewModelOutput { return self }
}
