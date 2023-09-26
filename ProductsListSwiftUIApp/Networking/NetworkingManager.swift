//
//  NetworkingManager.swift
//  PhoneMarket
//
//  Created by Jasim Uddin on 26/09/2023.
//

import Foundation

class NetworkingManager {
    
    static let shared = NetworkingManager()
    
    func fetchProducts(completed: @escaping (Result<[Products], NetworkingError>) -> Void) {
        
        let urlString = "https://dummyjson.com/products"
        
        fetchData(fromUrl: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let decoder = JSONDecoder()
                    let productResponse: ProductResponse = try decoder.decode(ProductResponse.self, from: data)
                                        completed(.success(productResponse.products))
//                    let products: [Products] = try decoder.decode([Products].self, from: data)
//                    completed(.success(products))
                } catch {
                        completed(.failure(.unableToParseData))
                    }
                case .failure(let error):
                    completed(.failure(error))
                }
            }
        }
    private func fetchData(fromUrl urlString: String, completed: @escaping (Result<Data, NetworkingError>) -> Void) {
        guard let url = URL(string: urlString) else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(.urlSessionError))
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(.httpFailureResponseCode))
                return
            }
            guard let data = data else {
                completed(.failure(.noDataReceived))
                return
            }
            
            completed(.success(data))
        }
        task.resume()
    }
    
}
