//
//  RacesViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import UIKit

enum RacesTypeFetch {
    case mock
    case request
}

protocol RacesViewModelProtocol: AnyObject {
    func reloadTableView()
}

protocol RacesViewModelDelegate: AnyObject {
    func success()
    func error(_ message: String)
}

class RacesViewModel {
    private let service: RacesService = RacesService()
    private weak var delegate: RacesViewModelDelegate?
    private var dataRacesScreen:[Race3] = []
    
    public func delegate(delegate: RacesViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetchRaces(_ typeFetch: RacesTypeFetch){
        switch typeFetch {
        case .mock:
            self.service.getRacesDataFromJson(fromFileName: "seasonRaces") { success, error in
                if let success = success {
                    self.dataRacesScreen = success.mrData.raceTable.races
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.service.getRacesData(fromURL: "https://ergast.com/api/f1/current.json") { success, error in
                if let success = success {
                    self.dataRacesScreen = success.mrData.raceTable.races
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    //MARK: - Functions to get info to TableView Races
    
    public var numberOfRows:Int{
        return self.dataRacesScreen.count
    }
    
    public func loadCurrentRace(indexPath: IndexPath) -> Race3 {
        return dataRacesScreen[indexPath.row]
    }
    
    public func getRaceRound(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].round
    }
    
    public func getRaceCountry(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].circuit.location.country
    }
    
    public func getRaceDescription(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].raceName
    }
    
    public func getRaceDay(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].date
    }
    
    public func getRaceMonth(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].date
    }
}
