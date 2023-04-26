//
//  StandingsViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import Foundation
import UIKit

class StandingsViewModel {
    
    private var dataStandings:[Standings] = []
    
    init(){
        self.configArrayDataStandings()
    }
    
    //MARK: - Mock Data (será retirado conforme implantação da API)
    
    private func configArrayDataStandings(){
    
        self.dataStandings.append(Standings(position: "1", teamsName: "Mercedes", driversCode: "RUS", time: "1:38:34.044", pointsWon: "26"))
        self.dataStandings.append(Standings(position: "2", teamsName: "Mercedes", driversCode: "HAM", time: "+ 1.529s", pointsWon: "18"))
        self.dataStandings.append(Standings(position: "3", teamsName: "Ferrari", driversCode: "SAI", time: "+ 4.051s", pointsWon: "15"))
        self.dataStandings.append(Standings(position: "4", teamsName: "Ferrari", driversCode: "LEC", time: "+ 8.441s", pointsWon: "12"))
        self.dataStandings.append(Standings(position: "5", teamsName: "Alpine", driversCode: "ALO", time: "+ 9.561s", pointsWon: "10"))
        self.dataStandings.append(Standings(position: "6", teamsName: "Red Bull Racing", driversCode: "VER", time: "+ 10.056s", pointsWon: "8"))
        self.dataStandings.append(Standings(position: "7", teamsName: "Red Bull Racing", driversCode: "PER", time: "+ 14.08s", pointsWon: "6"))
        self.dataStandings.append(Standings(position: "8", teamsName: "Alpine", driversCode: "OCO", time: "+ 18.69s", pointsWon: "4"))
        self.dataStandings.append(Standings(position: "9", teamsName: "Alfa Romeo", driversCode: "BOT", time: "+ 22.552s", pointsWon: "2"))
        self.dataStandings.append(Standings(position: "10", teamsName: "Aston Martin", driversCode: "STR", time: "+ 23.552s", pointsWon: "1"))
        self.dataStandings.append(Standings(position: "11", teamsName: "Aston Martin", driversCode: "VET", time: "+ 26.183s", pointsWon: "0"))
        self.dataStandings.append(Standings(position: "12", teamsName: "Alfa Romeo", driversCode: "ZHO", time: "+ 29.325s", pointsWon: "0"))
        self.dataStandings.append(Standings(position: "13", teamsName: "F1 Haas", driversCode: "MSC", time: "+ 29.899s", pointsWon: "0"))
    }
    
    private var dataTracks:Tracks = Tracks(circuitCountry: "Brazil", circuitImage: UIImage(named: "interlagos") ?? UIImage(), circuitLength: "4.309", circuitLaps: "71", firstGP: "1973", raceDistance: "305.879", trackRecord: "1.10.540", trackRecordDriver: "Valtteri Bottas", trackRecordYear: "2018")
    
    private var dataBestLap:BestLap = BestLap(nameDriver: "RUSSEL", bestTime: "1:13:785")
    
    
    //MARK: - Functions to get info to Drivers Standings Table View
    
    public var numberOfRowsResults:Int{
        return self.dataStandings.count
    }
    
    public func loadCurrentDriver(indexPath: IndexPath) -> Standings {
        return dataStandings[indexPath.row]
    }
    
    public func getDriverPosition(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].position
    }
    
    public func getTeamsName(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].teamsName
    }
    
    public func getDriversCode(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].driversCode
    }
    
    public func getTime(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].time
    }
    
    public func getPointsWon(indexPath: IndexPath) -> String {
        return dataStandings[indexPath.row].pointsWon
    }
    
    
    //MARK: - Functions to get info to Best Lap Display
    
    public func getBestLapNameDriver() -> String {
        return dataBestLap.nameDriver
    }
    
    public func getBestLapTime() -> String {
        return dataBestLap.bestTime
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
