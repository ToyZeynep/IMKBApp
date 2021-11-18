//
//  StockListViewController.swift
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
import Kingfisher
import Action


class StockListViewController: UIViewController, BindableType, UITableViewDelegate, UITextFieldDelegate {
 
    
    
    private let cellIdentifier = String(describing: StockListCell.self)
    private let headerId = "headerId"
    let disposeBag = DisposeBag()
    var stockListView = StockListView()
    var viewModel: StockListViewModel!
    var stockList = [Stocks]()
    var stocks = [Stocks]()
    
    
    override func loadView() {
        view = stockListView
    }
    
    override func viewDidLoad() {
        registerTableViewCell()
        stockListView.stockListSearchTextField.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
        stockListView.stockListTableView.reloadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    
    
    func bindViewModel() {
        
        viewModel.output.stockListResponse.subscribe(onNext: {[self] response in
            
            self.stockList.append(contentsOf: response.stocks!)
            self.viewModel.output.stockList.onNext(self.stockList)
            
        }).disposed(by:disposeBag)
        
        viewModel.output.stockList.bind(to: stockListView.stockListTableView.rx.items(cellIdentifier:cellIdentifier , cellType: StockListCell.self)){[self] row, model, cell in
            let up = "up"
            let image1 = UIImage(named: up)
            let down = "down"
            let image2 = UIImage(named: down)
            var image = UIImage()
            if model.isDown == true {
                image = image2!
            } else{
                image = image1!
            }
            
         //   cell.stockListCellVariationLabel.image = image
            cell.stockListCellSymbolLabel.text =  model.getSymbol(aesKey: self.viewModel.storedProperties.handshakeResponse.aesKey!, aesIV: self.viewModel.storedProperties.handshakeResponse.aesIV!)
            cell.stockListCellPriceLabel.text = String(format: "%0.2f" , model.price!)
            cell.stockListCellDifferenceLabel.text = String(format: "%0.2f" , model.difference!)
            cell.stockListCellVolumeLabel.text = String(format: "%0.2f" , model.volume!)
            cell.stockListCellBidLabel.text = String(format: "%0.2f" , model.bid!)
            cell.stockListCellOfferLabel.text = String(format: "%0.2f" , model.offer!)
            
            if ((row % 2) != 0) {
                cell.contentView.backgroundColor = .lightGray
            } else {
                cell.contentView.backgroundColor = .white
            }
        }.disposed(by: disposeBag)
        
        
        
       // stockListView.stockListTableView.rx.modelSelected(Stocks.self).bind(to: viewModel.input.selectedStock).disposed(by: disposeBag)
        
    }
    
    
    func registerTableViewCell() {
        stockListView.stockListTableView.delegate = self
        stockListView.stockListTableView.register(StockListCell.self, forCellReuseIdentifier: cellIdentifier)
        stockListView.stockListTableView.sectionHeaderHeight = 20
     
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        headerCell?.contentView.backgroundColor = .darkGray
        return headerCell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
}
