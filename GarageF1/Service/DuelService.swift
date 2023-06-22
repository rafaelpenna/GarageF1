//
//  DuelService.swift
//  GarageF1
//
//  Created by Rafael Penna on 16/06/23.
//


import UIKit
import Alamofire

protocol DuelServiceDelegate: GenericService {
    func getDriversNameFromJson(fromFileName name: String, completion: completion<DriversListModel?>)
    func getDriversName(fromURL url: String, completion: @escaping completion<DriversListModel?>)
}

class DuelService: DuelServiceDelegate {
    func getDriversName(fromURL url: String, completion: @escaping completion<DriversListModel?>) {
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: DriversListModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getDriversNameFromJson(fromFileName name: String, completion: completion<DriversListModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listNames = try JSONDecoder().decode(DriversListModel.self, from: data)
                completion(listNames, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "allDriversList", error))
            }
        }
    }
}
