//
//  StockDetailsViewController.swift
//  IMKBApp
//
//  Created by MacOS on 19.11.2021.
//

import Foundation
import UIKit
import RxCocoa
import RxSwift
import RxGesture
import XCoordinator
import Kingfisher
import Action

class CharacterDetailViewController: UIViewController, BindableType, UICollectionViewDelegate {
    
    let disposeBag = DisposeBag()
    var characterDetailView = StockDetailsView()
    var viewModel: StockDetailsViewModel!
    
    
    override func loadView() {
        view = characterDetailView
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.tintColor = .black
    }
    
    
    override func viewDidLoad() {
    }

func bindViewModel() {
    
 //   viewModel.output.name.bind(to: characterDetailView.characterDetailsNameLabel.rx.text).disposed(by: disposeBag)

   }
}
