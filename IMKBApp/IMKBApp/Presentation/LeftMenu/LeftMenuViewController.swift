//
//  LeftMenuViewController.swift
//  IMKBApp
//
//  Created by MacOS on 18.11.2021.
//

import Foundation
import UIKit
import RxCocoa
import RxSwift
import RxGesture
import XCoordinator
import Kingfisher
import Action


class LeftMenuViewController: UIViewController, BindableType {
 
    

    let disposeBag = DisposeBag()
    var leftMenuView = LeftMenuView()
    var viewModel: LeftMenuViewModel!
  
    
    
    override func loadView() {
        view = leftMenuView
    }
    
    override func viewDidLoad() {
      
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    
    func bindViewModel() {
        
    }
    
    
}
