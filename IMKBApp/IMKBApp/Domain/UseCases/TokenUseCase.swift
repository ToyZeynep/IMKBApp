//
//  TokenUseCase.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import Alamofire
import RxSwift
import RxCocoa

protocol TokenUseCaseType {
    
    func getToken(params: [String: Any]) -> Observable<MovieListResponse>
}

struct TokenUseCase: StockListUseCaseType {
   
    func getToken(params: [String : Any]) -> Observable<MovieListResponse> {
        return ApiClient.getToken(params: params)
    }
    

}
