//
//  APIManager.swift
//  ConcurrencyOneMinute
//
//  Created by Papon Supamongkonchai on 20/4/2566 BE.
//

import Foundation
import Alamofire

struct ErrorResponse: Codable {
    let message: String
}

enum APIResult<T> {
    case success(T)
    case failure(ErrorResponse)
}

class APIManager {
    static let shared = APIManager()
    
    private init() {}
    
    func request<T: Codable>(_ url: String, method: HTTPMethod = .get, parameters: Parameters? = nil, encoding: ParameterEncoding = URLEncoding.default, headers: HTTPHeaders? = nil, completion: @escaping (APIResult<T>) -> Void) {
        
        AF.request(url).responseDecodable(of: T.self) { response in
            switch response.result {
            case .success(let data):
                do {
                    completion(.success(data))
                } catch let decodingError {
                    do {
                        let errorResponse = try JSONDecoder().decode(ErrorResponse.self, from: response.data!)
                        completion(.failure(errorResponse))
                    } catch {
                        completion(.failure(ErrorResponse(message: "Unknown error occurred")))
                    }
                }
            case .failure(let error):
                completion(.failure(ErrorResponse(message: error.localizedDescription)))
            }
        }
           
    }
}


