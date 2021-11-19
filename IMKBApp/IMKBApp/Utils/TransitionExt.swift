//
//  TransitionExt.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import UIKit
import XCoordinator
import RxSwift
import RxCocoa

extension Transition {

    static func presentFullScreen(_ presentable: Presentable, animation: Animation? = nil) -> Transition {
        presentable.viewController?.modalPresentationStyle = .fullScreen
        return .present(presentable, animation: animation)
    }

    static func dismissAll() -> Transition {
        return Transition(presentables: [], animationInUse: nil) { rootViewController, options, completion in
            guard let presentedViewController = rootViewController.presentedViewController else {
                completion?()
                return
            }
            presentedViewController.dismiss(animated: options.animated) {
                Transition.dismissAll()
                    .perform(on: rootViewController, with: options, completion: completion)
            }
        }
    }
    
    static func addChild(_ child: Presentable) -> Transition {
        Transition(presentables: [child], animationInUse: nil) { _, _, completion in
            completion?()
        }
    }

}

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
