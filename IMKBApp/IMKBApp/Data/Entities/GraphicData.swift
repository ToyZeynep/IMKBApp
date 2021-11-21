//
//  GrabhicData.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation

import Foundation
struct GraphicData: Codable {
    let day: Int?
    let value: Double?

    enum CodingKeys: String, CodingKey {

        case day = "day"
        case value = "value"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        day = try values.decodeIfPresent(Int.self, forKey: .day)
        value = try values.decodeIfPresent(Double.self, forKey: .value)
    }

}
