//
//  ServiceConstants.swift
//  IMKBApp
//
//  Created by MacOS on 17.11.2021.
//

import Foundation

enum HTTPHeaderFieldValue: String {
    case json = "application/json"
}

enum HTTPHeaderFieldKey: String {
    case contentType     = "Content-Type"
    case XVPAuthorization = "X-VP-Authorization"
}
