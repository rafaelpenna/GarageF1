//
//  DuelViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

enum DuelTypeFetch {
    case mock
    case request
}

protocol DuelViewModelProtocol: AnyObject {
    func reloadTableView()
}

protocol DuelViewModelDelegate: AnyObject {
    func success()
    func error(_ message: String)
}

class DuelViewModel {
    
    private var driverList:[Driver9] = []
    private var leftNameDriverData:[String] = []
    private var rightNameDriverData:[String] = []
    
    private var leftListDriver = [String]()
    private var rightListDriver = [String]()
    
    private var dataDriversLeft: [StandingsList11] = []
    private var dataDriversRight: [StandingsList11] = []
    
    private let duelService: DuelService = DuelService()
    private let duelInfoDriversService: DriversDuelService = DriversDuelService()
    private weak var delegate: DuelViewModelDelegate?
    
    public func delegate(delegate: DuelViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetchDuelDriversList(_ typeFetch: DuelTypeFetch){
        switch typeFetch {
        case .mock:
            self.duelService.getDriversNameFromJson(fromFileName: "allDriversList") { success, error in
                if let success = success {
                    self.driverList = success.mrData.driverTable.drivers
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.duelService.getDriversName(fromURL: "https://ergast.com/api/f1/drivers.json?limit=857") { success, error in
                if let success = success {
                    self.driverList = success.mrData.driverTable.drivers
                    self.configLeftNameDriver()
                    self.configRightNameDriver()
                    self.leftListDriver = self.getLeftNameDriver
                    self.rightListDriver = self.getRightNameDriver
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    public func fetchLeftDuelDriversInfo(_ typeFetch: DuelTypeFetch){
        switch typeFetch {
        case .mock:
            self.duelInfoDriversService.getDriversDuelDataFromJson(fromFileName: "driverDuelInfo") { success, error in
                if let success = success {
                    self.dataDriversLeft = success.mrData.standingsTable.standingsLists
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.duelInfoDriversService.getDriversDuelData(fromURL: "https://ergast.com/api/f1/drivers/senna/driverStandings.json") { success, error in
                if let success = success {
                    self.dataDriversLeft = success.mrData.standingsTable.standingsLists
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    public func fetchRightDuelDriversInfo(_ typeFetch: DuelTypeFetch){
        switch typeFetch {
        case .mock:
            self.duelInfoDriversService.getDriversDuelDataFromJson(fromFileName: "driverDuelInfo") { success, error in
                if let success = success {
                    self.dataDriversRight = success.mrData.standingsTable.standingsLists
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.duelInfoDriversService.getDriversDuelData(fromURL: "https://ergast.com/api/f1/drivers/hamilton/driverStandings.json") { success, error in
                if let success = success {
                    self.dataDriversRight = success.mrData.standingsTable.standingsLists
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    
    private func configLeftNameDriver() {
        for name in 0 ..< driverList.count {
            self.leftNameDriverData.append("\(driverList[name].familyName), \(driverList[name].givenName)")
        }
    }
    
    private func configRightNameDriver() {
        for name in 0 ..< driverList.count {
            self.rightNameDriverData.append("\(driverList[name].familyName), \(driverList[name].givenName)")
        }
    }
    
    //MARK: - Functions to get Left Driver Data
    
    var leftDateBirth = ""
    var leftPlaceBirth = ""
    var leftChampionshipsWon = 0
    var leftSeasonTop3 = 0
    var leftPoints = 0
    var leftWins = 0
    
    public func getDriversBirthDateLeft() -> String {
        for seasons in 0 ..< dataDriversLeft.count {
            leftDateBirth = dataDriversLeft[seasons].driverStandings[0].driver.dateOfBirth
        }
        return leftDateBirth
    }
    
    public func getDriversBirthPlaceLeft() -> String {
        for seasons in 0 ..< dataDriversLeft.count {
            leftPlaceBirth = dataDriversLeft[seasons].driverStandings[0].driver.nationality
        }
        return leftPlaceBirth
    }
    
    public func getChampionshipsWonLeft() -> String {
        for seasons in 0 ..< dataDriversLeft.count {
            if dataDriversLeft[seasons].driverStandings[0].position == "1" {
                self.leftChampionshipsWon += 1
            }
        }
        return String(leftChampionshipsWon)
    }
    
    public func getLeftSeasonTop3() -> String {
        for seasons in 0 ..< dataDriversLeft.count {
            if dataDriversLeft[seasons].driverStandings[0].position == "1" || dataDriversLeft[seasons].driverStandings[0].position == "2" || dataDriversLeft[seasons].driverStandings[0].position == "3" {
                self.leftSeasonTop3 += 1
            }
        }
        return String(leftSeasonTop3)
    }
    
    public func getLeftSeasonsParticipated() -> String {
        return String(dataDriversLeft.count)
    }
    
    public func getPointsEarnedLeft() -> String {
        for seasons in 0 ..< dataDriversLeft.count {
            leftPoints += Int(dataDriversLeft[seasons].driverStandings[0].points) ?? 0
        }
        return String(leftPoints)
    }
    
    public func getWinsLeft() -> String {
        for seasons in 0 ..< dataDriversLeft.count {
            leftWins += Int(dataDriversLeft[seasons].driverStandings[0].wins) ?? 0
        }
        return String(leftWins)
    }
    
    //MARK: - Functions to get Right Driver Data
    
    var rightDateBirth = ""
    var rightPlaceBirth = ""
    var rightChampionshipsWon = 0
    var rightSeasonTop3 = 0
    var rightPoints = 0
    var rightWins = 0
    
    public func getDriversBirthDateRight() -> String {
        for seasons in 0 ..< dataDriversRight.count {
            rightDateBirth = dataDriversRight[seasons].driverStandings[0].driver.dateOfBirth
        }
        return rightDateBirth
    }
    
    public func getDriversBirthPlaceRight() -> String {
        for seasons in 0 ..< dataDriversRight.count {
            rightPlaceBirth = dataDriversRight[seasons].driverStandings[0].driver.nationality
        }
        return rightPlaceBirth
    }
    
    public func getChampionshipsWonRight() -> String {
        for seasons in 0 ..< dataDriversRight.count {
            if dataDriversRight[seasons].driverStandings[0].position == "1" {
                self.rightChampionshipsWon += 1
            }
        }
        return String(rightChampionshipsWon)
    }
    
    public func getRightSeasonTop3() -> String {
        for seasons in 0 ..< dataDriversRight.count {
            if dataDriversRight[seasons].driverStandings[0].position == "1" || dataDriversRight[seasons].driverStandings[0].position == "2" || dataDriversRight[seasons].driverStandings[0].position == "3" {
                self.rightSeasonTop3 += 1
            }
        }
        return String(rightSeasonTop3)
    }
    
    public func getRightSeasonsParticipated() -> String {
        return String(dataDriversRight.count)
    }
    
    public func getPointsEarnedRight() -> String {
        for seasons in 0 ..< dataDriversRight.count {
            rightPoints += Int(dataDriversRight[seasons].driverStandings[0].points) ?? 0
        }
        return String(rightPoints)
    }
    
    public func getWinsRight() -> String {
        for seasons in 0 ..< dataDriversRight.count {
            rightWins += Int(dataDriversRight[seasons].driverStandings[0].wins) ?? 0
        }
        return String(rightWins)
    }
    
    
    //MARK: - Functions to get data to Drivers Dropdown
    
    private var getLeftNameDriver: [String] {
        return leftNameDriverData
    }
    
    private var getRightNameDriver: [String] {
        return rightNameDriverData
    }
    
    public var getFilterLeftNameDriver: [String] {
        return leftListDriver
    }
    
    public var getFilterRightNameDriver: [String] {
        return rightListDriver
    }
    
    public func filterLeftList(searchText: String) {
        leftListDriver = getLeftNameDriver.filter{$0.lowercased().contains(searchText.lowercased())}
    }
    
    public func filterRightList(searchText: String) {
        rightListDriver = getRightNameDriver.filter{$0.lowercased().contains(searchText.lowercased())}
    }
    
    public func clearLeftFilterList() {
        leftListDriver = leftNameDriverData
    }
    
    public func clearRightFilterList() {
        rightListDriver = rightNameDriverData
    }
    
}
