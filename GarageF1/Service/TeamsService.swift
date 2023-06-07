//
//  TeamsService.swift
//  GarageF1
//
//  Created by Rafael Penna on 05/06/23.
//

import UIKit
import Alamofire

protocol TeamsServiceDelegate: GenericService {
    func getTeamsDataFromJson(fromFileName name: String, completion: @escaping completion<HistoryModel?>)
    func getTeamsData(fromURL url: String, completion: @escaping completion<HistoryModel?>)
}

class TeamsService: TeamsServiceDelegate {
    func getTeamsData(fromURL url: String, completion: @escaping completion<HistoryModel?>) {
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: HistoryModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getTeamsDataFromJson(fromFileName name: String, completion: @escaping completion<HistoryModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listDrivers = try JSONDecoder().decode(HistoryModel.self, from: data)
                completion(listDrivers, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "seasonConstructors", error))
            }
        }
    }
}


