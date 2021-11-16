//
//  HandshakeResponse.swift
//  IMKBApp
//
//  Created by MacOS on 16.11.2021.
//

import Foundation
import Foundation
struct HandshakeResponse: Codable {
    let aesKey : String?
    let aesIV : String?
    let authorization : String?
    let lifeTime : String?
    let status : Status?

    enum CodingKeys: String, CodingKey {

        case aesKey = "aesKey"
        case aesIV = "aesIV"
        case authorization = "authorization"
        case lifeTime = "lifeTime"
        case status = "status"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        aesKey = try values.decodeIfPresent(String.self, forKey: .aesKey)
        aesIV = try values.decodeIfPresent(String.self, forKey: .aesIV)
        authorization = try values.decodeIfPresent(String.self, forKey: .authorization)
        lifeTime = try values.decodeIfPresent(String.self, forKey: .lifeTime)
        status = try values.decodeIfPresent(Status.self, forKey: .status)
    }

}
