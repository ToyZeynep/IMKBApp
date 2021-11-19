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
        leftMenuView.leftMenuAllStocksButton.rx.tapGesture().when(.recognized).subscribe(onNext:{  gesture in
            UserDefaults.standard.set(PeriodTag.all.rawValue, forKey: "PeriodTag")
            self.viewModel.dismiss()
        }).disposed(by: disposeBag)
        
        leftMenuView.leftMenuIncreasingButton.rx.tapGesture().when(.recognized).subscribe(onNext:{  gesture in
            UserDefaults.standard.set(PeriodTag.increasing.rawValue, forKey: "PeriodTag")
            self.viewModel.dismiss()
        }).disposed(by: disposeBag)
        
        leftMenuView.leftMenuDecreasingButton .rx.tapGesture().when(.recognized).subscribe(onNext:{  gesture in
            UserDefaults.standard.set(PeriodTag.decreasing.rawValue, forKey: "PeriodTag")
            self.viewModel.dismiss()
        }).disposed(by: disposeBag)
        
        leftMenuView.leftMenuVolume30Button.rx.tapGesture().when(.recognized).subscribe(onNext:{  gesture in
            UserDefaults.standard.set(PeriodTag.volume30.rawValue, forKey: "PeriodTag")
            self.viewModel.dismiss()
        }).disposed(by: disposeBag)
        
        leftMenuView.leftMenuVolume50Button.rx.tapGesture().when(.recognized).subscribe(onNext:{  gesture in            UserDefaults.standard.set(PeriodTag.volume50.rawValue, forKey: "PeriodTag")
            self.viewModel.dismiss()
        }).disposed(by: disposeBag)
        
        leftMenuView.leftMenuVolume100Button.rx.tapGesture().when(.recognized).subscribe(onNext:{  gesture in
            UserDefaults.standard.set(PeriodTag.volume100.rawValue, forKey: "PeriodTag")
            self.viewModel.dismiss()
        }).disposed(by: disposeBag)
    }
    
    
}
