//
//  StocksEndPoint.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import Alamofire

enum StocksEndPoint: APIConfiguration {
    
    case stockList(params: [String: Any])
    case stockDetails(params: [String: Any])
    
    var stockUrl : String {
    return "api/stocks/"
    }
    

        var method: HTTPMethod {
            switch self {
            case .stockList:
                return .post
            case .stockDetails:
                return .post
            }
        }
    
    
    var path: String {
        switch self {
        case .stockList:
            return stockUrl + "list"
        case .stockDetails:
            return stockUrl + "detail"
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .stockList(let params):
            return params
        case .stockDetails(let params):
            return params
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        
        let baseUrl = try "https://mobilechallenge.veripark.com/".asURL()
        
        var urlRequest = URLRequest(url: baseUrl.appendingPathComponent(path))
        
        // HTTP Method
        urlRequest.httpMethod = method.rawValue
        
        
        // Parameters
        let encoding: ParameterEncoding = {
            switch method {
            case .post:
                return JSONEncoding.default
            default:
                return URLEncoding.default
            }
        }()
        print(urlRequest)
        return try encoding.encode(urlRequest, with: parameters)
        print(urlRequest)
        
    }
}
