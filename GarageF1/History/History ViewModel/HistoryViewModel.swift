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
    
    private var listYearDataInsert:[HistoryYearModel] = []
    private var listYear:[String] = []
    private var listYearsSearch = [String]()
    
    
    private let driversService: DriversService = DriversService()
    private let teamsService: TeamsService = TeamsService()
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
    

    

    
    init(){
        self.configArrayListYearDataInsert()
        self.configArrayListYear()
        listYearsSearch = listYear
    }
    
    //MARK: - Mock Data (será retirado conforme implantação da API)
    
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
        return listYear
    }
    
    public var getFilterDataYear: [String] {
        return listYearsSearch
    }
    
    public func filterList(searchText: String) {
        listYearsSearch = getDataYear.filter{$0.lowercased().contains(searchText.lowercased())}
    }
    
    public func clearFilterList() {
        listYearsSearch = listYear
    }
}
