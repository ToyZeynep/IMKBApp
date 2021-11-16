//
//  HandshakeEndPoint.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import Alamofire

enum HandshakeEndPoint: APIConfiguration {
    
    case token(params: [String: Any])
   
    
    var tokenUrl : String {
    return "api/handshake/"
    }
    

        var method: HTTPMethod {
            switch self {
            case .token:
                return .post
           
            }
        }
    
    
    var path: String {
        switch self {
        case .token:
            return tokenUrl + "start"
       
        }
    }
    
    var parameters: Parameters? {
        switch self {
        case .token(let params):
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
