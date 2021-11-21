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
import iProgressHUD

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
        navigationController?.navigationBar.backgroundColor = .red
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        setUpProgressHud()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setNeedsStatusBarAppearanceUpdate()
        StatusBarStyle.changeBarColor()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func setUpProgressHud(){
        loginView.progressHud.attachProgress(toViews: view)
    }
    
    func bindViewModel() {
        loginView.loginStartButton.rx.tapGesture().when(.recognized).subscribe(onNext:{  gesture in
            self.viewModel.getAuth()
            self.view.showProgress()
        }).disposed(by: disposeBag)
    }
}
