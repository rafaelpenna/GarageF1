//
//  DriversViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversViewModel {
    
    var dataDriversScreen: [Drivers] = [Drivers(driversPosition: "1", driversPhoto: UIImage(named: "Leclerc1") ?? UIImage(), driversName: "Charles ", driversLastName: "Leclerc", teamsName: "Ferrari", currentPoints: "86", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "2", driversPhoto: UIImage(named: "Max-1") ?? UIImage(), driversName: "Max ", driversLastName: "Verstappen", teamsName: "Red Bull Racing", currentPoints: "80", birthDate: "30/09/1997 (25 anos)", birthLocation: "Hasselt, Bélgica", championshipsWon: "2", racesParticipated: "163",podiumsEarned: "77", pointsEarned: "2011", bestPositionRaces: "1(x35)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "3", driversPhoto: UIImage(named: "sergio") ?? UIImage(), driversName: "Sergio ", driversLastName: "Perez", teamsName: "Red Bull Racing", currentPoints: "74", birthDate: "26/01/1990 (33 anos)", birthLocation: "Guadalajara, Mexico", championshipsWon: "0", racesParticipated: "239",podiumsEarned: "26", pointsEarned: "1201", bestPositionRaces: "1(x4)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "4", driversPhoto: UIImage(named: "sainz") ?? UIImage(), driversName: "Carlos ", driversLastName: "Sainz", teamsName: "Ferrari", currentPoints: "62", birthDate: "01/09/1994 (28 anos)", birthLocation: "Madrid, Espanha", championshipsWon: "0", racesParticipated: "163",podiumsEarned: "15", pointsEarned: "782", bestPositionRaces: "1(x1)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "5", driversPhoto: UIImage(named: "Norris") ?? UIImage(), driversName: "Lando ", driversLastName: "Norris", teamsName: "McLaren", currentPoints: "55", birthDate: "13/11/1999 (23 anos)", birthLocation: "Bristol, Reino Unido", championshipsWon: "0", racesParticipated: "82",podiumsEarned: "6", pointsEarned: "428", bestPositionRaces: "3(x2)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "6", driversPhoto: UIImage(named: "Hamilton") ?? UIImage(), driversName: "Lewis ", driversLastName: "Hamilton", teamsName: "Mercedes", currentPoints: "48", birthDate: "07/01/1985 (38 anos)", birthLocation: "Hertfordshire, Reino Unido", championshipsWon: "7", racesParticipated: "310",podiumsEarned: "191", pointsEarned: "4405", bestPositionRaces: "1(x103)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "7", driversPhoto: UIImage(named: "Vettel") ?? UIImage(), driversName: "Sebastian ", driversLastName: "Vettel", teamsName: "Aston Martin", currentPoints: "33", birthDate: "03/07/1987 (35 anos)", birthLocation: "Heppenheim, Alemanha", championshipsWon: "4", racesParticipated: "300",podiumsEarned: "122", pointsEarned: "3098", bestPositionRaces: "1(x53)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "8", driversPhoto: UIImage(named: "Bottas") ?? UIImage(), driversName: "Valtteri ", driversLastName: "Bottas", teamsName: "Alfa Romeo", currentPoints: "28", birthDate: "28/08/1989 (33 anos)", birthLocation: "Nastola, Finlândia", championshipsWon: "0", racesParticipated: "201",podiumsEarned: "67", pointsEarned: "1787", bestPositionRaces: "1(x10)", bestGridPosition: "1"),
                                  Drivers(driversPosition: "9", driversPhoto: UIImage(named: "george") ?? UIImage(), driversName: "George ", driversLastName: "Russel", teamsName: "Mercedes", currentPoints: "24", birthDate: "15/02/1998 (25 anos)", birthLocation: "Norfolk, Reino Unido", championshipsWon: "0", racesParticipated: "82",podiumsEarned: "9", pointsEarned: "294", bestPositionRaces: "1(x1)", bestGridPosition: "1")]
    
    
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
