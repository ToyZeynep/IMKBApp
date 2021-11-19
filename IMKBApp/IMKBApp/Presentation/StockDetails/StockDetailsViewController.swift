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

class StockDetailsViewController: UIViewController, BindableType {
    
    let disposeBag = DisposeBag()
    var stockDetailsView = StockDetailsView()
    var viewModel: StockDetailsViewModel!
    var isDown : Bool?
    
    
    override func loadView() {
        view = stockDetailsView
    }
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.navigationBar.tintColor = .black
    }
    
    
    override func viewDidLoad() {
    }

func bindViewModel() {
    
    
    viewModel.output.isDown.subscribe(onNext: { isDown in
        self.isDown = isDown
        let image1 =  UIImage(named: "up")?.withRenderingMode(.alwaysTemplate)
        let image2 =  UIImage(named: "down")?.withRenderingMode(.alwaysTemplate)
        var image = UIImage()
        if isDown == true {
            image = image2!
            self.stockDetailsView.stockDetailsVariationImageView.tintColor = .red
        } else{
            image = image1!
            self.stockDetailsView.stockDetailsVariationImageView.tintColor = .green
        }
        self.stockDetailsView.stockDetailsVariationImageView.image = image
    }).disposed(by:disposeBag)

    viewModel.output.symbol.bind(to: stockDetailsView.stockDetailsSymbolLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.price.bind(to: stockDetailsView.stockDetailsPriceLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.difference.bind(to: stockDetailsView.stockDetailsDifferenceLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.volume.bind(to: stockDetailsView.stockDetailsVolumeLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.bid.bind(to: stockDetailsView.stockDetailsBidLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.offer.bind(to: stockDetailsView.stockDetailsOfferLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.highest.bind(to: stockDetailsView.stockDetailsHighestLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.lowest.bind(to: stockDetailsView.stockDetailsLowestLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.maximum.bind(to: stockDetailsView.stockDetailsMaximumLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.minimum.bind(to: stockDetailsView.stockDetailsMinimumLabel.rx.text).disposed(by: disposeBag)
    viewModel.output.count.bind(to: stockDetailsView.stockDetailsCountLabel.rx.text).disposed(by: disposeBag)
   }
}
