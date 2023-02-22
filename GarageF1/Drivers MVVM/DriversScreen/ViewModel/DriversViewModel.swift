//
//  DriversViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversViewModel {
    
    var dataDriversScreen: [Drivers] = [Drivers(driversPosition: "1", driversPhoto: UIImage(named: "Leclerc1") ?? UIImage(), driversName: "Charles ", driversLastName: "Leclerc", teamsName: "Ferrari", currentPoints: "86", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "2", driversPhoto: UIImage(named: "Max-1") ?? UIImage(), driversName: "Max ", driversLastName: "Verstappen", teamsName: "Red Bull Racing", currentPoints: "80", birthDate: "16/10/1997 (22 anos)", birthLocation: "Monte Carlo, Holanda", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "3", driversPhoto: UIImage(named: "sergio") ?? UIImage(), driversName: "Sergio ", driversLastName: "Perez", teamsName: "Red Bull Racing", currentPoints: "74", birthDate: "16/10/1997 (28 anos)", birthLocation: "Monte Carlo, Mexico", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "4", driversPhoto: UIImage(named: "sainz") ?? UIImage(), driversName: "Carlos ", driversLastName: "Sainz", teamsName: "Ferrari", currentPoints: "62", birthDate: "16/10/1997 (30 anos)", birthLocation: "Monte Carlo, Espanha", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "5", driversPhoto: UIImage(named: "Norris") ?? UIImage(), driversName: "Lando ", driversLastName: "Norris", teamsName: "McLaren", currentPoints: "55", birthDate: "16/10/1997 (20 anos)", birthLocation: "Monte Carlo, Reino Unido", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "6", driversPhoto: UIImage(named: "Hamilton") ?? UIImage(), driversName: "Lewis ", driversLastName: "Hamilton", teamsName: "Mercedes", currentPoints: "42", birthDate: "16/10/1997 (32 anos)", birthLocation: "Monte Carlo, Reino Unido", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "7", driversPhoto: UIImage(named: "Vettel") ?? UIImage(), driversName: "Sebastian ", driversLastName: "Vettel", teamsName: "Aston Martin", currentPoints: "33", birthDate: "16/10/1997 (34 anos)", birthLocation: "Monte Carlo, Alemanha", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "8", driversPhoto: UIImage(named: "Bottas") ?? UIImage(), driversName: "Valtteri ", driversLastName: "Bottas", teamsName: "Alfa Romeo", currentPoints: "28", birthDate: "16/10/1997 (30 anos)", birthLocation: "Monte Carlo, Finlândia", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "9", driversPhoto: UIImage(named: "george") ?? UIImage(), driversName: "George ", driversLastName: "Russel", teamsName: "Mercedes", currentPoints: "24", birthDate: "16/10/1997 (19 anos)", birthLocation: "Monte Carlo, Reino Unido", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1")]
    
    
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
        return dataDriversScreen[indexPath.row].currentPoints
    }
    
    public func getBirthDate(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].birthDate
    }

    public func getBirthLocation(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].birthLocation
    }

    public func getChampionshipsWon(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].championshipsWon
    }

    public func getRacesParticipated(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].racesParticipated
    }

    public func getPodiumsEarned(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].podiumsEarned
    }

    public func getPointsEarned(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].pointsEarned
    }

    public func getBestPositionRaces(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].bestPositionRaces
    }

    public func getBestGridPosition(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].bestGridPosition
    }
    
}
