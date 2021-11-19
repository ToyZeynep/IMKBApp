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
    case leftMenu(handshakeRespose: HandshakeResponse, PublishSubject<Void>)
}

class StockListCoordinator: NavigationCoordinator<StockListRoute> {
    let disposeBag = DisposeBag()
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

        case .leftMenu (let handshakeResponse, let subject) :
            let  coordinator = LeftMenuCoordinator(handshakeResponse: handshakeResponse)
            coordinator.rootViewController.rx.dismissal
                .bind(to: subject)
                .disposed(by: disposeBag)
            return .present(coordinator, animation: .default)
            
        case .stockDetail(let stockId , let handshakeResponse):
            let viewController = StockDetailsViewController()
            let viewModel = StockDetailsViewModelImpl(router: unownedRouter, stockId: stockId, handshakeResponse: handshakeResponse)
            viewController.bind(to: viewModel)
            return .push(viewController, animation: .default)
     
        }
    }
}

