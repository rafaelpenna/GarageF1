//
//  DriversDuelService.swift
//  GarageF1
//
//  Created by Rafael Penna on 17/06/23.
//

import UIKit
import Alamofire

protocol DriverDuelServiceDelegate: GenericService {
    func getDriversDuelDataFromJson(fromFileName name: String, completion: completion<DuelInfoModel?>)
    func getDriversDuelData(fromURL url: String, completion: @escaping completion<DuelInfoModel?>)
}

class DriversDuelService: DriverDuelServiceDelegate {
    
    func getDriversDuelData(fromURL url: String, completion: @escaping completion<DuelInfoModel?>) {
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: DuelInfoModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getDriversDuelDataFromJson(fromFileName name: String, completion: completion<DuelInfoModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listInfoDrivers = try JSONDecoder().decode(DuelInfoModel.self, from: data)
                completion(listInfoDrivers, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "driverDuelInfo", error))
            }
        }
    }
}



