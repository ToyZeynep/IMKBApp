//
//  ApiConfiguration.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//
import Foundation
import Alamofire

protocol APIConfiguration: URLRequestConvertible {
    var method: HTTPMethod { get }
    var path: String { get }
    var parameters: Parameters? { get }
}
