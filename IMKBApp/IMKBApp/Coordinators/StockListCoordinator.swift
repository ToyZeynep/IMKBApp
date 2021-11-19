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
    case stockList(handshakeRespose : HandshakeResponse)
    case stockDetail(stockId : Int , handshakeRespose : HandshakeResponse)
    case leftMenu
}

class StockListCoordinator: NavigationCoordinator<StockListRoute> {
    
    init(handshakeResponse : HandshakeResponse) {
        super.init(initialRoute : .stockList(handshakeRespose: handshakeResponse))
    }
    
    override func prepareTransition(for route: StockListRoute) -> NavigationTransition {
        switch route {
            
        case .stockList(let handshakeResponse) :
            let viewController = StockListViewController()
            let viewModel = StockListViewModelImpl(router: unownedRouter , handshakeResponse : handshakeResponse )
            viewController.bind(to: viewModel)
            return .push(viewController, animation: .default)

        case .leftMenu :
            let viewController = LeftMenuViewController()
            let viewModel = LeftMenuViewModelImpl(router: unownedRouter)
            viewController.bind(to: viewModel)
            return .present(viewController, animation: .default)
            
        case .stockDetail(let stockId , let handshakeResponse):
            let viewController = StockDetailsViewController()
            let viewModel = StockDetailsViewModelImpl(router: unownedRouter, stockId: stockId, handshakeResponse: handshakeResponse)
            viewController.bind(to: viewModel)
            return .push(viewController, animation: .default)
     
        }
    }
}
