//
//  HighlightsService.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 14/06/23.
//

import Foundation
import Alamofire

protocol HighlightsServiceDelegate: GenericService {
    
    func getDriversDataFromJson(completion: @escaping completion<HomeModel?>)
    func getDriversDataFromURL(fromURL url: String, completion: @escaping completion<HomeModel?>)
}

class HighlightsService: HighlightsServiceDelegate {
    
    func getDriversDataFromURL(fromURL url: String, completion: @escaping completion<HomeModel?>) {
        
        let url: String = url
        
        AF.request(url, method: .get).validate().responseDecodable(of: HomeModel.self) { response in
            switch response.result {
            case .success(let success):
                completion(success, nil)
            case .failure(let error):
                completion(nil, Error.errorRequest(error))
            }
        }
    }
    
    func getDriversDataFromJson(completion: @escaping completion<HomeModel?>) {
        func getDriversDataFromJson(completion: @escaping completion<HomeModel?>) {
            if let url = Bundle.main.url(forResource: "driverStandings", withExtension: "json"){
                do {
                    let data = try Data(contentsOf: url)
                    let homeModel: HomeModel = try JSONDecoder().decode(HomeModel.self, from: data)
                    completion(homeModel,nil)
                } catch {
                    completion(nil,Error.fileDecodingFailed(name: "driverStandings", error))
                }
            }
        }
    }
}
