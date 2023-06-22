//
//  TeamsService.swift
//  GarageF1
//
//  Created by Rafael Penna on 05/06/23.
//

import UIKit
import Alamofire

protocol TeamsServiceDelegate: GenericService {
    func getTeamsDataFromJson(fromFileName name: String, completion: completion<ConstructorHistoryModel?>)
    func getTeamsData(fromURL url: String, completion: @escaping completion<ConstructorHistoryModel?>)
}

class TeamsService: TeamsServiceDelegate {
    func getTeamsData(fromURL url: String, completion: @escaping completion<ConstructorHistoryModel?>) {
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: ConstructorHistoryModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getTeamsDataFromJson(fromFileName name: String, completion: completion<ConstructorHistoryModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listTeams = try JSONDecoder().decode(ConstructorHistoryModel.self, from: data)
                completion(listTeams, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "seasonConstructors", error))
            }
        }
    }
}


