//
//  Status.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
struct Status: Codable {
    let isSuccess: Bool?
    let error: Error?
    
    enum CodingKeys: String, CodingKey {
        case isSuccess = "isSuccess"
        case error = "error"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        isSuccess = try values.decodeIfPresent(Bool.self, forKey: .isSuccess)
        error = try values.decodeIfPresent(Error.self, forKey: .error)
    }
    
}
