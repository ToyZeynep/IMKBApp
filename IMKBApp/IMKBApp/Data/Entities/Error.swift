//
//  Error.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
struct Error : Codable {
    let code : Int?
    let message : String?

    enum CodingKeys: String, CodingKey {

        case code = "code"
        case message = "message"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(Int.self, forKey: .code)
        message = try values.decodeIfPresent(String.self, forKey: .message)
    }

}
