//
//  StcokDetailsUseCase.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import Alamofire
import RxSwift
import RxCocoa

protocol StockDetailsUseCaseType {
    
    func stockDetails(params: [String: Any]) -> Observable<StockDetailsResponse>
}


struct StockDetailsUseCase: StockDetailsUseCaseType {
   
    func stockDetails(params: [String : Any]) -> Observable<StockDetailsResponse> {
        return ApiClient.stockDetails(params: params)
    }
    

}

