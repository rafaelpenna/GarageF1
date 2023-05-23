//
//  DuelViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelViewModel {
    
    private var driverList:[DuelDropdownModel] = []
    private var leftNameDriverData:[String] = []
    private var rightNameDriverData:[String] = []
    
    init(){
        self.configArrayListDriver()
        self.configLeftNameDriver()
        self.configRightNameDriver()
        
    }
    
    //MARK: - Mock Data (será retirado conforme implantação da API)
    
    private var dataDriversLeft:DuelModel = DuelModel(driversName: "Michael", driversLastName: "Schumacher", driversBirthDate: "03/01/1969", driversAge: "(53 anos)", driversBirthPlace: "Hurth-Hermullheim", driversCountry: "Alemanha", driversChampionshipsWon: "7",driversChampionshipsWinYear: "1994, 1995, 2000, 2002, 2003, 2004", driversRacesParticipated: "308", driversPodiumsWon: "155", driversPointsEarned: "1566", driversWins: "91")
    
    private var dataDriversRight:DuelModel = DuelModel(driversName: "Max", driversLastName: "Verstappen", driversBirthDate: "30/09/1997", driversAge: "(24 anos)", driversBirthPlace: "Hasselt", driversCountry: "Bélgica", driversChampionshipsWon: "2", driversChampionshipsWinYear: "2021, 2022", driversRacesParticipated: "163", driversPodiumsWon: "77", driversPointsEarned: "2011", driversWins: "35")
    
    private func configArrayListDriver(){
        self.driverList.append(DuelDropdownModel(duelDriverName: "Alan Prost"))
        self.driverList.append(DuelDropdownModel(duelDriverName: "Ayrton Senna"))
        self.driverList.append(DuelDropdownModel(duelDriverName: "David Coulthard"))
        self.driverList.append(DuelDropdownModel(duelDriverName: "Kimi Raikonnen"))
        self.driverList.append(DuelDropdownModel(duelDriverName: "Lewis Hammilton"))
        self.driverList.append(DuelDropdownModel(duelDriverName: "Juan Manuel Fangio"))
        self.driverList.append(DuelDropdownModel(duelDriverName: "Michael Schumacher"))
        self.driverList.append(DuelDropdownModel(duelDriverName: "Mika Hakkinen"))
        self.driverList.append(DuelDropdownModel(duelDriverName: "Rubens Barrichello"))
        self.driverList.append(DuelDropdownModel(duelDriverName: "Sebastian Vettel"))
    }
    
    private func configLeftNameDriver() {
        for name in 0 ..< driverList.count {
            self.leftNameDriverData.append(driverList[name].duelDriverName)
        }
    }
    
    private func configRightNameDriver() {
        for name in 0 ..< driverList.count {
            self.rightNameDriverData.append(driverList[name].duelDriverName)
        }
    }
    
    //MARK: - Functions to get Left Driver Data
    
    public func getDriversNameLeft() -> String {
        return dataDriversLeft.driversName
    }
    
    public func getDriversLastNameLeft() -> String {
        return dataDriversLeft.driversLastName
    }
    
    public func getDriversBirthDateLeft() -> String {
        return dataDriversLeft.driversBirthDate
    }
    
    public func getDriversBirthPlaceLeft() -> String {
        return dataDriversLeft.driversBirthPlace
    }
    
    public func getDriversCountryLeft() -> String {
        return dataDriversLeft.driversCountry
    }
    
    public func getDriversAgeLeft() -> String {
        return dataDriversLeft.driversAge
    }
    
    public func getChampionshipsWonLeft() -> String {
        return dataDriversLeft.driversChampionshipsWon
    }
    
    public func getChampionshipsWinYearLeft() -> String {
        return dataDriversLeft.driversChampionshipsWinYear
    }
    
    public func getRacesParticipatedLeft() -> String {
        return dataDriversLeft.driversRacesParticipated
    }
    
    public func getPodiumsWonLeft() -> String {
        return dataDriversLeft.driversPodiumsWon
    }
    
    public func getPointsEarnedLeft() -> String {
        return dataDriversLeft.driversPointsEarned
    }
    
    public func getWinsLeft() -> String {
        return dataDriversLeft.driversWins
    }
    
    //MARK: - Functions to get Right Driver Data
    
    public func getDriversNameRight() -> String {
        return dataDriversRight.driversName
    }
    
    public func getDriversLastNameRight() -> String {
        return dataDriversRight.driversLastName
    }
    
    public func getDriversBirthDateRight() -> String {
        return dataDriversRight.driversBirthDate
    }
    
    public func getDriversBirthPlaceRight() -> String {
        return dataDriversRight.driversBirthPlace
    }
    
    public func getDriversCountryRight() -> String {
        return dataDriversRight.driversCountry
    }
    
    public func getDriversAgeRight() -> String {
        return dataDriversRight.driversAge
    }
    
    public func getChampionshipsWonRight() -> String {
        return dataDriversRight.driversChampionshipsWon
    }
    
    public func getChampionshipsWinYearRight() -> String {
        return dataDriversRight.driversChampionshipsWinYear
    }
    
    public func getRacesParticipatedRight() -> String {
        return dataDriversRight.driversRacesParticipated
    }
    
    public func getPodiumsWonRight() -> String {
        return dataDriversRight.driversPodiumsWon
    }
    
    public func getPointsEarnedRight() -> String {
        return dataDriversRight.driversPointsEarned
    }
    
    public func getWinsRight() -> String {
        return dataDriversRight.driversWins
    }
    
    
    //MARK: - Functions to get data to Drivers Dropdown
    
    public var getLeftNameDriver: [String] {
        return leftNameDriverData
    }
    
    public var getRightNameDriver: [String] {
        return rightNameDriverData
    }
}
