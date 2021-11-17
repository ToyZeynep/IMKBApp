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


class StockListViewController: UIViewController, BindableType, UICollectionViewDelegate , UITextFieldDelegate {
    
    private let cellIdentifier = String(describing: StockListCell.self)
    let disposeBag = DisposeBag()
    var stockListView = StockListView()
    var viewModel: StockListViewModel!
    var stockList = [Stocks]()
    
    
    override func loadView() {
        view = stockListView
    }
    
    override func viewDidLoad() {
        registerTableView()
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
      
        viewModel.output.errorMessage.subscribe(onNext : { errorMessage in
            self.showAlert(title: "ERROR!", message: errorMessage)
        }).disposed(by: disposeBag)
        
        movieListView.movieListSearchButton.rx.tapGesture().when(.recognized).subscribe(onNext:{ [self] gesture in
            self.searchRules()
        }).disposed(by: disposeBag)
        
        
        viewModel.output.movieListResponse.subscribe(onNext: {[self] response in
            totalPageCount = response.getTotalPageNumber()
            self.movieList.append(contentsOf: response.movies!)
            self.viewModel.output.movieList.onNext(self.movieList)
            self.isLoading = false
        }).disposed(by:disposeBag)
        
        viewModel.output.movieList.bind(to: movieListView.movieListCollectionView.rx.items(cellIdentifier:cellIdentifier , cellType: MovieListCell.self)){[self] _, model, cell in
            if (indexPath.row % 2) {
                cell.contentView.backgroundColor = .lightGray
            } else {
                cell.contentView.backgroundColor = .white
            }
            let urlString = model.poster!.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
            cell.movieListCellImageView.kf.setImage(with: URL(string: urlString!))
            cell.movieListCellNameLabel.text = model.title
            cell.movieListCellYearLabel.text = model.year
            
            cell.movieListCellAddFavoriteButton.addTapGesture(){
    
                let favoriteList = RealmHelper.sharedInstance.fetchFavoriteList().map { $0 }
                if let position = favoriteList.firstIndex(where: {$0.imdbID == model.imdbID}){
                    RealmHelper.sharedInstance.deleteFromDb(movie: favoriteList[position])
                    AppSnackBar.make(in: self.view, message: "\(model.title!) remove to favorites ", duration: .custom(1.0)).show()
                    cell.movieListCellAddFavoriteButton.backgroundColor = .clear
                }else{
                    RealmHelper.sharedInstance.addMovieToFavorites(movie: model)
                    AppSnackBar.make(in: self.view, message: "\(model.title!) add to favorites", duration: .custom(1.0)).show()
                    cell.movieListCellAddFavoriteButton.backgroundColor = .red
                }

            }
            self.favoriMovieStatus(cell: cell, model: model)
        }.disposed(by: disposeBag)
        
        

        movieListView.movieListCollectionView.rx.modelSelected(Movie.self).bind(to: viewModel.input.selectedMovie).disposed(by: disposeBag)

    }
     
 
    func registerTableView() {
        stockListView.stockListTableView.delegate = self
        stockListView.stockListTableView.register(StockListCell.self, forCellWithReuseIdentifier: "StockListCell")

    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
         let headerView = UIView.init(frame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 90))
         let headerCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
         headerCell?.frame = headerView.bounds
         headerView.addSubview(headerCell!)
         return headerView
     }
}
