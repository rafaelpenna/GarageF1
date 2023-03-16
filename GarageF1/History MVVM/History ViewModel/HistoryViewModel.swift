//
//  HistoryViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import UIKit

class HistoryViewModel {
    
    private var dataDrivers:[HistoryDriversModel] = []
    
    private var dataTeams:[HistoryTeamsModel] = []
    
    init(){
        self.configArrayDataDrivers()
        self.configArrayDataTeams()
    }
    
    private func configArrayDataDrivers(){
        self.dataDrivers.append(HistoryDriversModel(driversPosition: "1", driversName: "Charles ", driversLastName: "Leclerc", teamsDriversName: "Ferrari", seasonDriversPoints: "86"))
        self.dataDrivers.append(HistoryDriversModel(driversPosition: "2", driversName: "Max ", driversLastName: "Verstappen", teamsDriversName: "Red Bull Racing", seasonDriversPoints: "80"))
        self.dataDrivers.append(HistoryDriversModel(driversPosition: "3", driversName: "Sergio ", driversLastName: "Perez", teamsDriversName: "Red Bull Racing", seasonDriversPoints: "74"))
        self.dataDrivers.append(HistoryDriversModel(driversPosition: "4", driversName: "Carlos ", driversLastName: "Sainz", teamsDriversName: "Ferrari", seasonDriversPoints: "62"))
        self.dataDrivers.append(HistoryDriversModel(driversPosition: "5", driversName: "Lando ", driversLastName: "Norris", teamsDriversName: "McLaren",  seasonDriversPoints: "55"))
        self.dataDrivers.append(HistoryDriversModel(driversPosition: "6", driversName: "Lewis ", driversLastName: "Hamilton", teamsDriversName: "Mercedes", seasonDriversPoints: "42"))
        self.dataDrivers.append(HistoryDriversModel(driversPosition: "7", driversName: "Sebastian ", driversLastName: "Vettel", teamsDriversName: "Aston Martin", seasonDriversPoints: "33"))
        self.dataDrivers.append(HistoryDriversModel(driversPosition: "8", driversName: "Valtteri ", driversLastName: "Bottas", teamsDriversName: "Alfa Romeo", seasonDriversPoints: "28"))
        self.dataDrivers.append(HistoryDriversModel(driversPosition: "9", driversName: "George ", driversLastName: "Russel", teamsDriversName: "Mercedes", seasonDriversPoints: "24"))
    }
    
    private func configArrayDataTeams(){
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "1", teamsName: "Ferrari", seasonTeamsPoints: "613"))
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "2", teamsName: "Red Bull Racing", seasonTeamsPoints: "428"))
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "3", teamsName: "Mercedes", seasonTeamsPoints: "343"))
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "4", teamsName: "McLaren",  seasonTeamsPoints: "375"))
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "5", teamsName: "Aston Martin", seasonTeamsPoints: "255"))
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "6", teamsName: "Alpha Tauri", seasonTeamsPoints: "142"))
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "7", teamsName: "Alpine", seasonTeamsPoints: "77"))
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "8", teamsName: "Haas F1 Team", seasonTeamsPoints: "23"))
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "9", teamsName: "Williams", seasonTeamsPoints: "15"))
        self.dataTeams.append(HistoryTeamsModel(teamsPosition: "10", teamsName: "Alfa Romeo", seasonTeamsPoints: "0"))
    }
    
    public var numberOfRowsDrivers:Int{
        return self.dataDrivers.count
    }
    
    public var numberOfRowsTeams:Int{
        return self.dataTeams.count
    }
    
    public func loadCurrentDriver(indexPath: IndexPath) -> HistoryDriversModel {
        return dataDrivers[indexPath.row]
    }
    
    public func loadCurrentTeam(indexPath: IndexPath) -> HistoryTeamsModel {
        return dataTeams[indexPath.row]
    }
    
    public func getDriverPosition(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].driversPosition
    }
    
    public func getDriversName(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].driversName
    }
    
    public func getDriversLastName(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].driversLastName
    }
    
    public func getTeamsDriversName(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].teamsDriversName
    }
    
    public func getSeasonDriversPoints(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].seasonDriversPoints
    }
    
    public func getTeamsPosition(indexPath: IndexPath) -> String {
        return dataTeams[indexPath.row].teamsPosition
    }
    
    public func getTeamsName(indexPath: IndexPath) -> String {
        return dataTeams[indexPath.row].teamsName
    }
    
    public func getTeamsSeasonPoints(indexPath: IndexPath) -> String {
        return dataTeams[indexPath.row].seasonTeamsPoints
    }
}
