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
    
    private var listYearDataInsert:[HistoryYearModel] = []
    private var listYear:[String] = []
    
    init(){
        self.configArrayDataDrivers()
        self.configArrayDataTeams()
        self.configArrayListYearDataInsert()
        self.configArrayListYear()
    }
    
    //MARK: - Mock Data (será retirado conforme implantação da API)
    
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
    
    private func configArrayListYearDataInsert(){
        self.listYearDataInsert.append(HistoryYearModel(year: "2022"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2021"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2020"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2019"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2018"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2017"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2016"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2015"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2014"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2013"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2012"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2011"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2010"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2009"))
        self.listYearDataInsert.append(HistoryYearModel(year: "2008"))
    }
    
    private func configArrayListYear() {
        for years in 0 ..< listYearDataInsert.count {
            self.listYear.append(listYearDataInsert[years].year)
        }
    }
    
    
    //MARK: - Functions to get info to Drivers Data
    
    public var numberOfRowsDrivers:Int{
        return self.dataDrivers.count
    }
    
    public func loadCurrentDriver(indexPath: IndexPath) -> HistoryDriversModel {
        return dataDrivers[indexPath.row]
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
    
    
    //MARK: - Functions to get info to Teams Data
    
    public var numberOfRowsTeams:Int{
        return self.dataTeams.count
    }
    
    public func loadCurrentTeam(indexPath: IndexPath) -> HistoryTeamsModel {
        return dataTeams[indexPath.row]
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
    
    //MARK: - Functions to get info to Dropdown Data
    
    public var getDataYear: [String] {
        return listYear
    }
}
