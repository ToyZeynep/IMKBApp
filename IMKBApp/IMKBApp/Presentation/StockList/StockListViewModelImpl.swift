//
//  StockListViewModelImpl.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import RxSwift
import RxCocoa
import XCoordinator
import Action

class StockListViewModelImpl: StockListViewModel, StockListViewModelInput, StockListViewModelOutput , StockListViewModelStoredProperties {
   
    
   

    let disposeBag = DisposeBag()
    
    // MARK: -Inputs-
    
    private(set) lazy var selectedStock = selectedStockActions.inputs
    
    // MARK: -Actions-
    lazy var selectedStockActions = Action<Stocks, Void> { [unowned self] movie in
       //self.router.rx.trigger(.movieDetail(omdbId: movie.imdbID!))
    }
    
    // MARK: -Outputs-
    
    var stockListResponse = PublishSubject<StockListResponse>()
   
    var stockList = PublishSubject<[Stocks]>
   
    internal let stockListUseCase: StockListUseCase
    
    // MARK: -Stored properties-
    
    private let router: UnownedRouter<StockListRoute>
    internal let movieListUseCase = StockListUseCase()
    
    // MARK: -Initialization-
    
    init(router: UnownedRouter<StockListRoute>) {
        self.router = router
    }

    func fetchStockList(searchText: String , page: Int ) {
        var params: [String: Any] = [String: Any]()
        params["page"] = page
        params["s"] = searchText
        params["type"] = "movie"
        movieListUseCase.getMovieList(params: params).subscribe(onNext: { response in
            if response.movies != nil {
                self.movieListResponse.onNext(response)
            } else {
                self.errorMessage.onNext("There is no such movie")
            }
        }).disposed(by: disposeBag)
    }
    func navigateToFavorites()  {
        router.trigger(.favoriteList)
    }
}
