//
//  Enums.swift
//  CryptoCurrencyApp
//
//  Created by Muhammad Qureshi on 9/17/21.
//

import Foundation
enum URLofBTC: String {
    case url = "https://api.nomics.com/v1/currencies/ticker?key=3ccf169f8a57c4bcc6c5cf82951c0908450696f9&ids=BTC&interval=1d,30d&convert=EUR&per-page=100&page=1"
}

enum ErrorTypes: Error {
    case decodingError
    case networkError
}
