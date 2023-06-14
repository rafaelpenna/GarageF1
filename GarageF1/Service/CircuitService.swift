//
//  CircuitService.swift
//  GarageF1
//
//  Created by Rafael Penna on 14/06/23.
//

import UIKit
import Alamofire

protocol CircuitServiceDelegate: GenericService {
    func getCircuitDataFromJson(fromFileName name: String, completion: completion<CircuitModel?>)
}

class CircuitService: CircuitServiceDelegate {
    func getCircuitDataFromJson(fromFileName name: String, completion: completion<CircuitModel?>) {
        if let name = Bundle.main.url(forResource: name, withExtension: "json"){
            do {
                let data = try Data(contentsOf: name)
                let listCircuit = try JSONDecoder().decode(CircuitModel.self, from: data)
                completion(listCircuit, nil)
            } catch {
                completion(nil, Error.fileDecodingFailed(name: "seasonCircuitInfo", error))
            }
        }
    }
}
