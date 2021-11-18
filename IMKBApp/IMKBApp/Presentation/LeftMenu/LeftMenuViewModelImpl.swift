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

    // MARK: -Stored properties-
    
    private let router: UnownedRouter<StockListRoute>
   
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<StockListRoute> ) {
        self.router = router
    }
}
