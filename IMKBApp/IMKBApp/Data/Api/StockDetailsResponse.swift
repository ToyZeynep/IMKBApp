//
//  StockDetailsResponse.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import Foundation
struct StockDetailsResponse : Codable {
    let isDown : Bool?
    let isUp : Bool?
    let bid : Double?
    let channge : Double?
    let count : Int?
    let difference : Double?
    let offer : Double?
    let highest : Double?
    let lowest : Double?
    let maximum : Double?
    let minimum : Double?
    let price : Double?
    let volume : Double?
    let symbol : String?
    let graphicData : [GraphicData]?
    let status : Status?

    enum CodingKeys: String, CodingKey {

        case isDown = "isDown"
        case isUp = "isUp"
        case bid = "bid"
        case channge = "channge"
        case count = "count"
        case difference = "difference"
        case offer = "offer"
        case highest = "highest"
        case lowest = "lowest"
        case maximum = "maximum"
        case minimum = "minimum"
        case price = "price"
        case volume = "volume"
        case symbol = "symbol"
        case graphicData = "graphicData"
        case status = "status"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        isDown = try values.decodeIfPresent(Bool.self, forKey: .isDown)
        isUp = try values.decodeIfPresent(Bool.self, forKey: .isUp)
        bid = try values.decodeIfPresent(Double.self, forKey: .bid)
        channge = try values.decodeIfPresent(Double.self, forKey: .channge)
        count = try values.decodeIfPresent(Int.self, forKey: .count)
        difference = try values.decodeIfPresent(Double.self, forKey: .difference)
        offer = try values.decodeIfPresent(Double.self, forKey: .offer)
        highest = try values.decodeIfPresent(Double.self, forKey: .highest)
        lowest = try values.decodeIfPresent(Double.self, forKey: .lowest)
        maximum = try values.decodeIfPresent(Double.self, forKey: .maximum)
        minimum = try values.decodeIfPresent(Double.self, forKey: .minimum)
        price = try values.decodeIfPresent(Double.self, forKey: .price)
        volume = try values.decodeIfPresent(Double.self, forKey: .volume)
        symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
        graphicData = try values.decodeIfPresent([GraphicData].self, forKey: .graphicData)
        status = try values.decodeIfPresent(Status.self, forKey: .status)
    }

}
