//
//  AppCoordinator.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import UIKit
import RxSwift
import XCoordinator

enum AppRoute: Route {
    case stockList(hanshakeRespose : HandshakeResponse)
    case login
}

class AppCoordinator: NavigationCoordinator<AppRoute> {
    
    init() {
        super.init(initialRoute: .login)
    }
    
    override func prepareTransition(for route: AppRoute) -> NavigationTransition {
        switch route {
            
        case .login :
            let viewController = LoginViewController()
            let viewModel = LoginViewModelImpl(router: unownedRouter)
            viewController.bind(to: viewModel)
            return .push(viewController, animation: .default)

        case .stockList(let handshakeResponse):
            let  coordinator = StockListCoordinator(handshakeResponse: handshakeResponse)
            return .presentFullScreen(coordinator, animation: .default)
            
        }
    }
}

