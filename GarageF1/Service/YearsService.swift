//
//  YearsService.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/06/23.
//

import UIKit
import Alamofire

protocol YearsServiceDelegate: GenericService {
    func getYearsDataFromJson(fromFileName name: String, completion: @escaping completion<HistoryYearModel?>)
    func getYearsData(fromURL url: String, completion: @escaping completion<HistoryYearModel?>)
}

class YearsService: YearsServiceDelegate {
    func getYearsData(fromURL url: String, completion: @escaping completion<HistoryYearModel?>) {
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: HistoryYearModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getYearsDataFromJson(fromFileName name: String, completion: @escaping completion<HistoryYearModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listDrivers = try JSONDecoder().decode(HistoryYearModel.self, from: data)
                completion(listDrivers, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "yearsSeason", error))
            }
        }
    }
}
