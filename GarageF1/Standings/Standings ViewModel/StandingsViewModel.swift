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
    private let service: StandingsService = StandingsService()
    private weak var delegate: StandingsViewModelDelegate?
    private var dataStandings:[Result4] = []
    
    public func delegate(delegate: StandingsViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetchStandings(_ typeFetch: StandingsTypeFetch){
        switch typeFetch {
        case .mock:
            self.service.getStandingsDataFromJson(fromFileName: "standingsRound1") { success, error in
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
            self.service.getStandingsData(fromURL: "https://ergast.com/api/f1/2023/1/results.json") { success, error in
                if let success = success {
                    self.dataStandings = success.mrData.raceTable.races[0].results
                    self.delegate?.success()
                    self.getBestLapTime()
                    self.getBestLapNameDriver()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    private var dataTracks:Tracks = Tracks(circuitCountry: "Brazil", circuitImage: UIImage(named: "interlagos") ?? UIImage(), circuitLength: "4.309", circuitLaps: "71", firstGP: "1973", raceDistance: "305.879", trackRecord: "1.10.540", trackRecordDriver: "Valtteri Bottas", trackRecordYear: "2018")
    
    
    //MARK: - Functions to get info to Drivers Standings Table View
    
    public var numberOfRowsResults:Int{
        return self.dataStandings.count
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
    
    public func getCircuitCountry() -> String {
        return dataTracks.circuitCountry
    }
    
    public func getCircuitImage() -> UIImage {
        return dataTracks.circuitImage
    }
    
    public func getCircuitLength() -> String {
        return dataTracks.circuitLength
    }
    
    public func getCircuitLaps() -> String {
        return dataTracks.circuitLaps
    }
    
    public func getFirstGP() -> String {
        return dataTracks.firstGP
    }
    
    public func getRaceDistance() -> String {
        return dataTracks.raceDistance
    }
    
    public func getTrackRecord() -> String {
        return dataTracks.trackRecord
    }
    
    public func getTrackRecordDriver() -> String {
        return dataTracks.trackRecordDriver
    }
    
    public func getTrackRecordYear() -> String {
        return dataTracks.trackRecordYear
    }
}
