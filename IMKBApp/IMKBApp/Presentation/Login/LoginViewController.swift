//
//  LoginViewController.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import UIKit
import RxCocoa
import RxSwift
import RxGesture
import XCoordinator

class LoginViewController: UIViewController,BindableType {
    
    private let disposeBag = DisposeBag()
    var loginView = LoginView()
    var viewModel: LoginViewModel!
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    func bindViewModel() {
        loginView.loginStartButton.rx.tapGesture().when(.recognized).subscribe(onNext:{  gesture in
            self.viewModel.getAuth()
        }).disposed(by: disposeBag)
     }
}
