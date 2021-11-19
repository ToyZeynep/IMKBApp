//
//  LeftMenuCoordinator.swift
//  IMKBApp
//
//  Created by MacOS on 19.11.2021.
//

import Foundation
import UIKit
import RxSwift
import XCoordinator

enum LeftMenuRoute: Route {
    case stockList(handshakeRespose : HandshakeResponse)
    case leftMenu(handshakeRespose : HandshakeResponse)
    case dismiss
}
class LeftMenuCoordinator: NavigationCoordinator<LeftMenuRoute> {
    
    init(handshakeResponse : HandshakeResponse) {
        super.init(initialRoute : .leftMenu(handshakeRespose: handshakeResponse))
    }
    
    override func prepareTransition(for route: LeftMenuRoute) -> NavigationTransition {
        switch route {
            
        case .stockList(let handshakeResponse) :
            let coordinator = StockListCoordinator(handshakeResponse: handshakeResponse)
            return .presentFullScreen(coordinator, animation: .default)

        case .leftMenu (let handshakeResponse) :
            let viewController = LeftMenuViewController()
            let viewModel = LeftMenuViewModelImpl(router: unownedRouter, handshakeResponse: handshakeResponse)
            viewController.bind(to: viewModel)
            return .push(viewController, animation: .default)
            
        case .dismiss:
            return .dismiss(animation: .default)
        }
    }
}
