//
//  FullConstructorsService.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 22/06/23.
//

import Foundation
import Alamofire

protocol FullConstructorsDelegate: GenericService {
    func getConstructorsData(fromURL url: String, completion: @escaping completion<FullConstructorsModel?>)
    func getConstructorsDataFromJson(fromFileName name: String, completion: completion<FullConstructorsModel?>)
}

class FullConstructorsService: FullConstructorsDelegate {
    
    func getConstructorsData(fromURL url: String, completion: @escaping completion<FullConstructorsModel?>) {
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: FullConstructorsModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getConstructorsDataFromJson(fromFileName name: String, completion: completion<FullConstructorsModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listConstructors = try JSONDecoder().decode(FullConstructorsModel.self, from: data)
                completion(listConstructors, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "seasonConstructors", error))
            }
        }
    }
}
