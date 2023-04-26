//
//  DriversViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversViewModel {
    
    private var dataDriversScreen:[Drivers] = []
    
    init(){
        self.configArrayDriversScreen()
    }
    
    
    //MARK: - Mock Data (será retirado conforme implantação da API)
    
    private func configArrayDriversScreen(){
        self.dataDriversScreen.append(Drivers(driversPosition: "1", driversPhoto: UIImage(named: "Leclerc1") ?? UIImage(), driversName: "Charles ", driversLastName: "Leclerc", teamsName: "Ferrari", currentDriverPoints: "86", driversBirthDate: "16/10/1997 (24 anos)", driversBirthLocation: "Monte Carlo, Monaco", driversChampionshipsWon: "0", driversRacesParticipated: "92",driversPodiumsEarned: "18", driversPointsEarned: "730", driversBestPositionRaces: "1(x5)", driversBestGridPosition: "1"))
        self.dataDriversScreen.append(Drivers(driversPosition: "2", driversPhoto: UIImage(named: "Max-1") ?? UIImage(), driversName: "Max ", driversLastName: "Verstappen", teamsName: "Red Bull Racing", currentDriverPoints: "80", driversBirthDate: "30/09/1997 (25 anos)", driversBirthLocation: "Hasselt, Bélgica", driversChampionshipsWon: "2", driversRacesParticipated: "163",driversPodiumsEarned: "77", driversPointsEarned: "2011", driversBestPositionRaces: "1(x35)", driversBestGridPosition: "1"))
        self.dataDriversScreen.append(Drivers(driversPosition: "3", driversPhoto: UIImage(named: "sergio") ?? UIImage(), driversName: "Sergio ", driversLastName: "Perez", teamsName: "Red Bull Racing", currentDriverPoints: "74", driversBirthDate: "26/01/1990 (33 anos)", driversBirthLocation: "Guadalajara, Mexico", driversChampionshipsWon: "0", driversRacesParticipated: "239",driversPodiumsEarned: "26", driversPointsEarned: "1201", driversBestPositionRaces: "1(x4)", driversBestGridPosition: "1"))
        self.dataDriversScreen.append(Drivers(driversPosition: "4", driversPhoto: UIImage(named: "sainz") ?? UIImage(), driversName: "Carlos ", driversLastName: "Sainz", teamsName: "Ferrari", currentDriverPoints: "62", driversBirthDate: "01/09/1994 (28 anos)", driversBirthLocation: "Madrid, Espanha", driversChampionshipsWon: "0", driversRacesParticipated: "163",driversPodiumsEarned: "15", driversPointsEarned: "782", driversBestPositionRaces: "1(x1)", driversBestGridPosition: "1"))
        self.dataDriversScreen.append(Drivers(driversPosition: "5", driversPhoto: UIImage(named: "Norris") ?? UIImage(), driversName: "Lando ", driversLastName: "Norris", teamsName: "McLaren", currentDriverPoints: "55", driversBirthDate: "13/11/1999 (23 anos)", driversBirthLocation: "Bristol, Reino Unido", driversChampionshipsWon: "0", driversRacesParticipated: "82",driversPodiumsEarned: "6", driversPointsEarned: "428", driversBestPositionRaces: "3(x2)", driversBestGridPosition: "1"))
        self.dataDriversScreen.append(Drivers(driversPosition: "6", driversPhoto: UIImage(named: "Hamilton") ?? UIImage(), driversName: "Lewis ", driversLastName: "Hamilton", teamsName: "Mercedes", currentDriverPoints: "48", driversBirthDate: "07/01/1985 (38 anos)", driversBirthLocation: "Hertfordshire, Reino Unido", driversChampionshipsWon: "7", driversRacesParticipated: "310",driversPodiumsEarned: "191", driversPointsEarned: "4405", driversBestPositionRaces: "1(x103)", driversBestGridPosition: "1"))
        self.dataDriversScreen.append(Drivers(driversPosition: "7", driversPhoto: UIImage(named: "Vettel") ?? UIImage(), driversName: "Sebastian ", driversLastName: "Vettel", teamsName: "Aston Martin", currentDriverPoints: "33", driversBirthDate: "03/07/1987 (35 anos)", driversBirthLocation: "Heppenheim, Alemanha", driversChampionshipsWon: "4", driversRacesParticipated: "300",driversPodiumsEarned: "122", driversPointsEarned: "3098", driversBestPositionRaces: "1(x53)", driversBestGridPosition: "1"))
        self.dataDriversScreen.append(Drivers(driversPosition: "8", driversPhoto: UIImage(named: "Bottas") ?? UIImage(), driversName: "Valtteri ", driversLastName: "Bottas", teamsName: "Alfa Romeo", currentDriverPoints: "28", driversBirthDate: "28/08/1989 (33 anos)", driversBirthLocation: "Nastola, Finlândia", driversChampionshipsWon: "0", driversRacesParticipated: "201",driversPodiumsEarned: "67", driversPointsEarned: "1787", driversBestPositionRaces: "1(x10)", driversBestGridPosition: "1"))
        self.dataDriversScreen.append(Drivers(driversPosition: "9", driversPhoto: UIImage(named: "george") ?? UIImage(), driversName: "George ", driversLastName: "Russel", teamsName: "Mercedes", currentDriverPoints: "24", driversBirthDate: "15/02/1998 (25 anos)", driversBirthLocation: "Norfolk, Reino Unido", driversChampionshipsWon: "0", driversRacesParticipated: "82",driversPodiumsEarned: "9", driversPointsEarned: "294", driversBestPositionRaces: "1(x1)", driversBestGridPosition: "1"))
    }
    
    
    //MARK: - Functions to get info to TableView Drivers
    
    public var numberOfRows:Int{
        return self.dataDriversScreen.count
    }
    
    public func loadCurrentDriver(indexPath: IndexPath) -> Drivers {
        return dataDriversScreen[indexPath.row]
    }
    
    public func getDriverPosition(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversPosition
    }
    
    public func getDriverPhoto(indexPath: IndexPath) -> UIImage {
        return dataDriversScreen[indexPath.row].driversPhoto
    }
    
    public func getDriverName(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversName
    }
    
    public func getDriverLastName(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversLastName
    }
    
    public func getTeam(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].teamsName
    }
    
    public func getPoints(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].currentDriverPoints
    }
    
    
    //MARK: - Functions to get info to Driver Detail Data
    
    public func getBirthDate(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversBirthDate
    }

    public func getBirthLocation(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversBirthLocation
    }

    public func getChampionshipsWon(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversChampionshipsWon
    }

    public func getRacesParticipated(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversRacesParticipated
    }

    public func getPodiumsEarned(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversPodiumsEarned
    }

    public func getPointsEarned(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversPointsEarned
    }

    public func getBestPositionRaces(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversBestPositionRaces
    }

    public func getBestGridPosition(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driversBestGridPosition
    }
    
}
