//
//  CoinAssetPriceModel.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//

import Foundation

struct CoinAssetPriceModel: Codable {
    let time: Time
    let disclaimer: String
    let chartName: String
    let bpi: [String: Currency]
}

struct Time: Codable {
    let updated: String
    let updatedISO: String
    let updateduk: String
}

struct Currency: Codable {
    let code: String
    let symbol: String
    let rate: String
    let description: String
    let rateFloat: Double

    enum CodingKeys: String, CodingKey {
        case code
        case symbol
        case rate
        case description
        case rateFloat = "rate_float"
    }
}
