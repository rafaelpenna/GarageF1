//
//  DuelViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelViewModel {
    
    private var driverList:[DuelDropdownModel] = []
    
    init(){
        self.configArrayListDriver()
    }
    
    private var dataDriversLeft:DuelModel = DuelModel(driversName: "Michael", driversLastName: "Schumacher", driversBirthDate: "03/01/1969", driversAge: "(53 anos)", driversBirthPlace: "Hurth-Hermullheim", driversCountry: "Alemanha", championshipsWon: "7",championshipsWonYear: "1994, 1995, 2000, 2002, 2003, 2004", racesParticipated: "308", podiumsWon: "155", pointsEarned: "1566", wins: "91")
    
    private var dataDriversRight:DuelModel = DuelModel(driversName: "Max", driversLastName: "Verstappen", driversBirthDate: "30/09/1997", driversAge: "(24 anos)", driversBirthPlace: "Hasselt", driversCountry: "Bélgica", championshipsWon: "2", championshipsWonYear: "2021, 2022", racesParticipated: "163", podiumsWon: "77", pointsEarned: "2011", wins: "35")
    
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
    

    
    //MARK: - Functions to get left driver data
    
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
        return dataDriversLeft.championshipsWon
    }
    
    public func getChampionshipsWinYearLeft() -> String {
        return dataDriversLeft.championshipsWonYear
    }
    
    public func getRacesParticipatedLeft() -> String {
        return dataDriversLeft.racesParticipated
    }
    
    public func getPodiumsWonLeft() -> String {
        return dataDriversLeft.podiumsWon
    }
    
    public func getPointsEarnedLeft() -> String {
        return dataDriversLeft.pointsEarned
    }
    
    public func getWinsLeft() -> String {
        return dataDriversLeft.wins
    }
    
    //MARK: - Functions to get right driver data
    
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
        return dataDriversRight.championshipsWon
    }
    
    public func getChampionshipsWinYearRight() -> String {
        return dataDriversRight.championshipsWonYear
    }
    
    public func getRacesParticipatedRight() -> String {
        return dataDriversRight.racesParticipated
    }
    
    public func getPodiumsWonRight() -> String {
        return dataDriversRight.podiumsWon
    }
    
    public func getPointsEarnedRight() -> String {
        return dataDriversRight.pointsEarned
    }
    
    public func getWinsRight() -> String {
        return dataDriversRight.wins
    }
    
    
    //MARK: - Functions to get data for dropdown
    
    public var numberOfRowsDrivers: Int{
        return self.driverList.count
    }
    
    public func getDriverName(indexPath: IndexPath) -> String {
        return driverList[indexPath.row].duelDriverName
    }
}
