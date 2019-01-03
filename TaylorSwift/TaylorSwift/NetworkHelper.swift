//
//  NetworkHelper.swift
//  TaylorSwift
//
//  Created by Alfredo Barragan on 1/3/19.
//  Copyright © 2019 Alfredo Barragan. All rights reserved.
//

import Foundation
final class NetworkHelper {
    static func performDataTask(urlString: String, httpMethod: String, completionHandler: @escaping (Error?, Data?) ->Void) {
        guard let url = URL(string: urlString) else {
            print("not working")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = httpMethod
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if let error = error {
                completionHandler(error, nil)
            }
            if let response = response as? HTTPURLResponse {
                print("also not working")
            }
            if let data = data {
                completionHandler(nil, data)
            }
            }.resume()
    }
}
