//
//  StockListResponse.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
struct StockListResponse : Codable {
    let stocks: [Stocks]?
    let status: Status?

    enum CodingKeys: String, CodingKey {
        case stocks = "stocks"
        case status = "status"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        stocks = try values.decodeIfPresent([Stocks].self, forKey: .stocks)
        status = try values.decodeIfPresent(Status.self, forKey: .status)
    }

}
