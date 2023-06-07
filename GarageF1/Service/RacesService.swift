//
//  RacesService.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/06/23.
//

import UIKit
import Alamofire

protocol RacesServiceDelegate: GenericService {
    func getRacesDataFromJson(fromFileName name: String, completion: @escaping completion<RacesModel?>)
    func getRacesData(fromURL url: String, completion: @escaping completion<RacesModel?>)
}

class RacesService: RacesServiceDelegate {
    func getRacesData(fromURL url: String, completion: @escaping completion<RacesModel?>) {
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: RacesModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getRacesDataFromJson(fromFileName name: String, completion: @escaping completion<RacesModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listDrivers = try JSONDecoder().decode(RacesModel.self, from: data)
                completion(listDrivers, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "seasonRaces", error))
            }
        }
    }
}
