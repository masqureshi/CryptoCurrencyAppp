//
//  NetworkService.swift
//  CryptoCurrencyApp
//
//  Created by Muhammad Qureshi on 9/17/21.
//

import Foundation

struct NetworkService {
    static let shared = NetworkService()
    
    func networkCall(url: String, completition: @escaping (Result<Any?, Error>) -> ()) {
        guard let url = URL(string: url) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completition(.failure(error))
            } else if let data = data {
                completition(.success(data))
            }
        }.resume()
    }
}

