//
//  HistoryViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import UIKit

enum HistoryTypeFetch {
    case mock
    case request
}

protocol HistoryViewModelProtocol: AnyObject {
    func reloadTableView()
}

protocol HistoryViewModelDelegate: AnyObject {
    func success()
    func error(_ message: String)
}

class HistoryViewModel {
    private var dataDrivers:[DriverStanding] = []
    private var dataTeams:[ConstructorStanding1] = []
    
    private var listYearDataInsert:[Season2] = []
    private var listYearsData:[String] = []
    private var listYear:[String] = []
    private var listYearsSearch:[String] = []
    
    private let driversService: DriversService = DriversService()
    private let teamsService: TeamsService = TeamsService()
    private let yearsService: YearsService = YearsService()
    private weak var delegate: HistoryViewModelDelegate?
    
    public func delegate(delegate: HistoryViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetchHistoryTeams(_ typeFetch: HistoryTypeFetch){
        switch typeFetch {
        case .mock:
            self.teamsService.getTeamsDataFromJson(fromFileName: "seasonContructors") { success, error in
                if let success = success {
                    self.dataTeams = success.mrData.standingsTable.standingsLists[0].constructorStandings
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.teamsService.getTeamsData(fromURL: "https://ergast.com/api/f1/2020/constructorStandings.json") { success, error in
                if let success = success {
                    self.dataTeams = success.mrData.standingsTable.standingsLists[0].constructorStandings
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    public func fetchHistoryDrivers(_ typeFetch: HistoryTypeFetch){
        switch typeFetch {
        case .mock:
            self.driversService.getDriversDataFromJson(fromFileName: "seasonDrivers") { success, error in
                if let success = success {
                    self.dataDrivers = success.mrData.standingsTable.standingsLists[0].driverStandings
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.driversService.getDriversData(fromURL: "https://ergast.com/api/f1/2020/driverStandings.json") { success, error in
                if let success = success {
                    self.dataDrivers = success.mrData.standingsTable.standingsLists[0].driverStandings
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    public func fetchHistoryYears(_ typeFetch: HistoryTypeFetch){
        switch typeFetch {
        case .mock:
            self.yearsService.getYearsDataFromJson(fromFileName: "yearsSeason") { success, error in
                if let success = success {
                    self.listYearDataInsert = success.mrData.seasonTable.seasons
                    self.configArrayListYear()
                    self.listYearsData = self.listYear.reversed()
                    self.listYearsSearch = self.listYearsData
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.yearsService.getYearsData(fromURL: "https://ergast.com/api/f1/seasons.json?limit=73") { success, error in
                if let success = success {
                    self.listYearDataInsert = success.mrData.seasonTable.seasons
                    self.configArrayListYear()
                    self.listYearsData = self.listYear.reversed()
                    self.listYearsSearch = self.listYearsData
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    

    


    
    private func configArrayListYear() {
        for years in 0 ..< listYearDataInsert.count {
            self.listYear.append(listYearDataInsert[years].season)
        }
    }
    
    //MARK: - Functions to get info to Drivers Data
    
    public var numberOfRowsDrivers:Int{
        return self.dataDrivers.count
    }
    
    public func loadCurrentDriver(indexPath: IndexPath) -> DriverStanding {
        return dataDrivers[indexPath.row]
    }
    
    public func getDriverPosition(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].position
    }
    
    public func getDriversName(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].driver.givenName
    }
    
    public func getDriversLastName(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].driver.familyName
    }
    
    public func getTeamsDriversName(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].constructors[2].name
    }
    
    public func getSeasonDriversPoints(indexPath: IndexPath) -> String {
        return dataDrivers[indexPath.row].points
    }
    
    
    //MARK: - Functions to get info to Teams Data
    
    public var numberOfRowsTeams:Int{
        return self.dataTeams.count
    }
    
    public func loadCurrentTeam(indexPath: IndexPath) -> ConstructorStanding1 {
        return dataTeams[indexPath.row]
    }
    
    public func getTeamsPosition(indexPath: IndexPath) -> String {
        return dataTeams[indexPath.row].position
    }
    
    public func getTeamsName(indexPath: IndexPath) -> String {
        return dataTeams[indexPath.row].constructor.name
    }
    
    public func getTeamsSeasonPoints(indexPath: IndexPath) -> String {
        return dataTeams[indexPath.row].points
    }
    
    //MARK: - Functions to get info to Dropdown Data
    
    private var getDataYear: [String] {
        return listYearsData
    }
    
    public var getFilterDataYear: [String] {
        return listYearsSearch
    }
    
    public func filterList(searchText: String) {
        listYearsSearch = getDataYear.filter{$0.lowercased().contains(searchText.lowercased())}
    }
    
    public func clearFilterList() {
        listYearsSearch = listYearsData
    }
}
