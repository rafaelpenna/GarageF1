//
//  HistoryDriversService.swift
//  GarageF1
//
//  Created by Rafael Penna on 16/06/23.
//

import UIKit
import Alamofire

protocol HistoryDriverServiceDelegate: GenericService {
    func getDriversDataFromJson(fromFileName name: String, completion: completion<HistoryDriversModel?>)
    func getDriversData(fromURL url: String, completion: @escaping completion<HistoryDriversModel?>)
}

class HistoryDriversService: HistoryDriverServiceDelegate {
    
    func getDriversData(fromURL url: String, completion: @escaping completion<HistoryDriversModel?>) {
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: HistoryDriversModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getDriversDataFromJson(fromFileName name: String, completion: completion<HistoryDriversModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listDrivers = try JSONDecoder().decode(HistoryDriversModel.self, from: data)
                completion(listDrivers, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "seasonDrivers", error))
            }
        }
    }
}
