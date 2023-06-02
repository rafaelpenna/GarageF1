//
//  SeasonDriversService.swift
//  GarageF1
//
//  Created by Rafael Penna on 02/06/23.
//

import UIKit
import Alamofire

protocol SeasonDriversServiceDelegate: GenericService {
    func getSeasonDriversFromJson(completion: @escaping completion<SeasonDriversModel?>)
    func getDrivers(completion: @escaping completion<SeasonDriversModel?>)
}

class SeasonDriversService: SeasonDriversServiceDelegate {
    
    func getDrivers(completion: @escaping completion<SeasonDriversModel?>) {
        let url: String = "https://ergast.com/api/f1/current/driverStandings.json"
        
        AF.request(url, method: .get).validate().responseDecodable(of: SeasonDriversModel.self) { response in
            print(#function)
            debugPrint(response)
            
            switch response.result {
            case .success(let success):
                print("SUCCESS -> \(#function)")
                completion(success, nil)
            case .failure(let error):
                print("ERROR -> \(#function)")
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    
    func getSeasonDriversFromJson(completion: @escaping completion<SeasonDriversModel?>) {
        if let url = Bundle.main.url(forResource: "seasonDrivers", withExtension: "json"){
            do {
                let data = try Data(contentsOf: url)
                let listDrivers = try JSONDecoder().decode(SeasonDriversModel.self, from: data)
                completion(listDrivers, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "seasonDrivers", error))
            }
        }
    }
}
