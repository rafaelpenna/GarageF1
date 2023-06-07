//
//  StandingsService.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/06/23.
//

import UIKit
import Alamofire

protocol StandingsServiceDelegate: GenericService {
    func getStandingsDataFromJson(fromFileName name: String, completion: @escaping completion<StandingsModel?>)
    func getStandingsData(fromURL url: String, completion: @escaping completion<StandingsModel?>)
}

class StandingsService: StandingsServiceDelegate {
    func getStandingsData(fromURL url: String, completion: @escaping completion<StandingsModel?>) {
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: StandingsModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getStandingsDataFromJson(fromFileName name: String, completion: @escaping completion<StandingsModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listDrivers = try JSONDecoder().decode(StandingsModel.self, from: data)
                completion(listDrivers, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "standingsRound1", error))
            }
        }
    }
}
