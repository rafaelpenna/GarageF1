//
//  StandingsViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import Foundation
import UIKit

enum StandingsTypeFetch {
    case mock
    case request
}

protocol StandingsViewModelProtocol: AnyObject {
    func reloadTableView()
}

protocol StandingsViewModelDelegate: AnyObject {
    func success()
    func error(_ message: String)
}

class StandingsViewModel {
    private let standingsService: StandingsService = StandingsService()
    private let circuitService: CircuitService = CircuitService()
    private weak var delegate: StandingsViewModelDelegate?
    private var raceViewModel: RacesViewModel = RacesViewModel()
    private var dataStandings:[Result4] = []
    private var dataCircuit: [Race4] = []
    private var dataCircuitInfo: [Circuit6] = []
    public var selectedRound: Int = 0
    
    public func delegate(delegate: StandingsViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetchStandings(_ typeFetch: StandingsTypeFetch){
        switch typeFetch {
        case .mock:
            self.standingsService.getStandingsDataFromJson(fromFileName: "standingsRound1") { success, error in
                if let success = success {
                    self.dataStandings = success.mrData.raceTable.races[0].results
                    self.delegate?.success()
                    self.getBestLapTime()
                    self.getBestLapNameDriver()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.standingsService.getStandingsData(fromURL: "https://ergast.com/api/f1/2023/\(selectedRound + 1)/results.json") { success, error in
                if let success = success {
                    if success.mrData.raceTable.races.isEmpty == false {
                        self.dataStandings = success.mrData.raceTable.races[0].results
                    } else {
                        self.dataStandings = []
                    }
                    self.delegate?.success()
                    self.getBestLapTime()
                    self.getBestLapNameDriver()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    public func fetchCircuitInfo() {
        self.circuitService.getCircuitDataFromJson(fromFileName: "seasonCircuitInfo") { success, error in
            if let success = success {
                self.dataCircuitInfo = success.mrData.circuitTable.circuits
                self.delegate?.success()
            } else {
                self.delegate?.error(error?.localizedDescription ?? "")
                print("náo deu")
            }
        }
    }
    
    private var dataTracks = ["Brazil", UIImage(named: "interlagos") , "4.309", "71", "1973", "305.879", "1.10.540", "Valtteri Bottas", "2018"] as [Any]
    
    
    //MARK: - Functions to get info to Drivers Standings Table View
    
    public var numberOfRowsResults:Int{
        return self.dataStandings.count
    }
    
    public func getCircuitCountryName(indexPath: IndexPath) -> String {
        return dataCircuit[indexPath.row].circuit.location.country
    }
    
    public func loadCurrentDriver(indexPath: IndexPath) -> Result4 {
        return dataStandings[indexPath.row]
    }
    
    public func getDriverPosition(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].position
    }
    
    public func getTeamsName(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].constructor.name
    }
    
    public func getDriversCode(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].driver.code
    }
    
    public func getTime(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].time?.time ?? dataStandings[indexPath.row].status
    }
    
    public func getPointsWon(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].points
    }
    
    //MARK: - Functions to get info to Best Lap Display
    
    public var bestLapDataName: String = ""
    public var bestLapDataTime: String = ""
    
    
    private func getBestLapNameDriver() -> String {
        for n in 0..<dataStandings.count {
            if dataStandings[n].fastestLap.rank == "1" {
                bestLapDataName = dataStandings[n].driver.familyName.uppercased()
            }
        }
        return bestLapDataName
    }
    
    private func getBestLapTime() -> String {
        for n in 0..<dataStandings.count {
            if dataStandings[n].fastestLap.rank == "1" {
                bestLapDataTime = dataStandings[n].fastestLap.time.time.lowercased()
            }
        }
        return bestLapDataTime
    }
    
    
    //MARK: - Functions to get info to Track Data
    
    public var circuitNumberOfLaps: String = ""
    
    public func getCircuitImage() -> UIImage {
        return dataTracks[1] as! UIImage
    }
    
    public func getCircuitLength() -> String {
        return dataTracks[2] as! String
    }
    
    public func getCircuitLaps() -> String {
        for n in 0..<dataCircuitInfo.count {
            if dataCircuitInfo[n].round == "\(selectedRound)" {
                circuitNumberOfLaps = dataCircuitInfo[n].circuitInfo.numberLaps
            }
        }
        return circuitNumberOfLaps
    }
    
    public func getFirstGP() -> String {
        return dataTracks[4] as! String
    }
    
    public func getRaceDistance() -> String {
        return dataTracks[5] as! String
    }
    
    public func getTrackRecord() -> String {
        return dataTracks[6] as! String    }
    
    public func getTrackRecordDriver() -> String {
        return dataTracks[7] as! String    }
    
    public func getTrackRecordYear() -> String {
        return dataTracks[8] as! String    }
}
