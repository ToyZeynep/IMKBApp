//
//  StockListCoordinator.swift
//  IMKBApp
//
//  Created by MacOS on 17.11.2021.
//

import Foundation
import UIKit
import RxSwift
import XCoordinator

enum StockListRoute: Route {
    case stockList
  //  case stockDetail
    //case leftMenu
}

class StockListCoordinator: NavigationCoordinator<StockListRoute> {
    
    init() {
        super.init(initialRoute: .stockList)
    }
    
    override func prepareTransition(for route: StockListRoute) -> NavigationTransition {
        switch route {
            
        case .stockList :
            let viewController = StockListViewController()
            let viewModel = StockListViewModelImpl(router: unownedRouter)
            viewController.bind(to: viewModel)
            return .push(viewController, animation: .default)

            
     
        }
    }
}
