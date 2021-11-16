//
//  StockListUseCase.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import Alamofire
import RxSwift
import RxCocoa

protocol StockListUseCaseType {
    
    func stockList(params: [String: Any]) -> Observable<StockListResponse>
}


struct StockListUseCase: StockListUseCaseType {
   
    func stockList(params: [String : Any]) -> Observable<StockListResponse> {
        return ApiClient.stockList(params: params)
    }
    

}
