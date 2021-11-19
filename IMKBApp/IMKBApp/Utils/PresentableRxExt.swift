//
//  PresentableRxExt.swift
//  IMKBApp
//
//  Created by MacOS on 19.11.2021.
//

import Foundation

import Foundation
import RxCocoa
import RxSwift
import UIKit
import XCoordinator

extension Reactive where Base: Presentable {

    public var dismissal: Observable<Void>! {
        guard let viewController = base.viewController else {
            return nil
        }
        return viewController.rx
            .methodInvoked(#selector(UIViewController.viewDidDisappear(_:)))
            .map { _ in }
            .filter { [weak viewController] in
                guard let viewController = viewController else { return false }
                return viewController.isBeingDismissed || viewController.isMovingFromParent
            }
    }

}
