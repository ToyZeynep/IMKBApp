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
import Action
import iProgressHUD

class StockListViewController: UIViewController, BindableType, UITableViewDelegate, UITextFieldDelegate {
    
    private let cellIdentifier = String(describing: StockListCell.self)
    let disposeBag = DisposeBag()
    var stockListView = StockListView()
    var viewModel: StockListViewModel!
    var stockList = [Stocks]()
    
    override func loadView() {
        view = stockListView
    }
    
    override func viewDidLoad() {
        registerTableViewCell()
        stockListView.stockListSearchTextField.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        StatusBarStyle.changeBarColor()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
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
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text == "" {
            self.viewModel.fetchStockList(handshakeResponse: self.viewModel.storedProperties.handshakeResponse, periodTag: "all")
        } else {
            filterBySymbol(searchText: textField.text!)
        }
        return true
    }
    
    func filterBySymbol(searchText: String){
        var filterList = [Stocks]()
        for stock in self.stockList {
            if stock.getSymbol(aesKey: self.viewModel.storedProperties.handshakeResponse.aesKey!, aesIV: self.viewModel.storedProperties.handshakeResponse.aesIV!) == searchText.uppercased() {
                filterList.append(stock)
            }
        }
        self.viewModel.output.stockList.onNext(filterList)
    }
    
    func bindViewModel() {
        
        viewModel.output.stockList.subscribe(onNext: { stockList in
            self.stockList = stockList
            self.view.dismissProgress()
        }).disposed(by:disposeBag)
        
        viewModel.output.stockList.bind(to: stockListView.stockListTableView.rx.items(cellIdentifier:cellIdentifier , cellType: StockListCell.self)){[self] row, model, cell in
            
            setVariationImageView(isDown: model.isDown!, cell: cell)
            cell.stockListCellSymbolLabel.text =  model.getSymbol(aesKey: self.viewModel.storedProperties.handshakeResponse.aesKey!, aesIV: self.viewModel.storedProperties.handshakeResponse.aesIV!)
            cell.stockListCellPriceLabel.text = model.price!.toString()
            cell.stockListCellDifferenceLabel.text = abs(model.difference!).toString()
            cell.stockListCellVolumeLabel.text = model.volume!.toString()
            cell.stockListCellBidLabel.text = model.bid!.toString()
            cell.stockListCellOfferLabel.text = model.offer!.toString()
            
            self.setTableViewCellColor(cell: cell, row: row)
        }.disposed(by: disposeBag)
        
        stockListView.stockListLeftMenuButton.rx.tapGesture().when(.recognized).subscribe(onNext:{  gesture in
            Observable.just(true).bind(to: self.viewModel.input.showLeftMenu).disposed(by: self.disposeBag)
        }).disposed(by: disposeBag)
        
        stockListView.stockListTableView.rx.modelSelected(Stocks.self).bind(to: viewModel.input.selectedStock).disposed(by: disposeBag)
    }
    func setVariationImageView(isDown: Bool , cell: StockListCell) {
        let upImage =  UIImage(named: "up")?.withRenderingMode(.alwaysTemplate)
        let downImage =  UIImage(named: "down")?.withRenderingMode(.alwaysTemplate)
        cell.stockListCellVariationImageView.tintColor = isDown ? .red : .green
        cell.stockListCellVariationImageView.image = isDown ? downImage : upImage
    }
    func registerTableViewCell() {
        stockListView.stockListTableView.delegate = self
        stockListView.stockListTableView.register(StockListCell.self, forCellReuseIdentifier: cellIdentifier)
        stockListView.stockListTableView.sectionHeaderHeight = 20
    }
    func setTableViewCellColor(cell: StockListCell, row: Int){
        if ((row % 2) != 0) {
            cell.contentView.backgroundColor = .lightGray
        } else {
            cell.contentView.backgroundColor = .white
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        headerCell?.contentView.backgroundColor = UIColor(rgb: 0x43434d)
        return headerCell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
}
