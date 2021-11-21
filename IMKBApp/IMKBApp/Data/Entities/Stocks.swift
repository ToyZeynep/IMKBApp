//
//  Stocks.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import CryptoSwift

struct Stocks: Codable {
    let id: Int?
    let isDown: Bool?
    let isUp: Bool?
    let bid: Double?
    let difference: Double?
    let offer: Double?
    let price: Double?
    let volume: Double?
    let symbol: String?

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case isDown = "isDown"
        case isUp = "isUp"
        case bid = "bid"
        case difference = "difference"
        case offer = "offer"
        case price = "price"
        case volume = "volume"
        case symbol = "symbol"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        isDown = try values.decodeIfPresent(Bool.self, forKey: .isDown)
        isUp = try values.decodeIfPresent(Bool.self, forKey: .isUp)
        bid = try values.decodeIfPresent(Double.self, forKey: .bid)
        difference = try values.decodeIfPresent(Double.self, forKey: .difference)
        offer = try values.decodeIfPresent(Double.self, forKey: .offer)
        price = try values.decodeIfPresent(Double.self, forKey: .price)
        volume = try values.decodeIfPresent(Double.self, forKey: .volume)
        symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
    }

    func getSymbol(aesKey: String, aesIV: String) -> String {
        let intKey = [UInt8](base64: aesKey)
        let intIV = [UInt8](base64: aesIV)
        let intSymbol = [UInt8](base64: symbol!)
        let aes = try? AES(key: intKey, blockMode: CBC(iv: intIV), padding: .pkcs7)
        let text = try? aes?.decrypt(intSymbol)
        let str = String(bytes: text!, encoding: String.Encoding.utf8)
        return str!
    }
}
