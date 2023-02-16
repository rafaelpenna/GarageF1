//
//  DriversDetailViewMode.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import UIKit

class DriversDetailViewModel {
    
    var dataDriversDetailScreen: [DriversDetailModel] = [DriversDetailModel(driversPhoto: UIImage(named: "Leclerc1") ?? UIImage(), driversName: "Charles", driversLastName: "Leclerc", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                                         DriversDetailModel(driversPhoto: UIImage(named: "max") ?? UIImage(), driversName: "Max", driversLastName: "Verstappen", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                                         DriversDetailModel(driversPhoto: UIImage(named: "sergio") ?? UIImage(), driversName: "Sergio", driversLastName: "Perez", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                                         DriversDetailModel(driversPhoto: UIImage(named: "sainz") ?? UIImage(), driversName: "Carlos", driversLastName: "Sainz", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                                         DriversDetailModel(driversPhoto: UIImage(named: "Norris") ?? UIImage(), driversName: "Lando", driversLastName: "Norris", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1"),
                                                         DriversDetailModel(driversPhoto: UIImage(named: "Hamilton") ?? UIImage(), driversName: "Lewis", driversLastName: "Hamilton", birthDate: "16/10/1997 (24 anos)", birthLocation: "Monte Carlo, Monaco", championshipsWon: "0", racesParticipated: "92",podiumsEarned: "18", pointsEarned: "730", bestPositionRaces: "1(x5)", bestGridPosition: "1")]
    
    
    public func loadCurrentDriver(indexPath: IndexPath) -> DriversDetailModel {
        return dataDriversDetailScreen[indexPath.row]
    }

    public func getDriverPhoto(indexPath: IndexPath) -> UIImage {
        return dataDriversDetailScreen[indexPath.row].driversPhoto
    }

    public func getDriverName(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].driversName
    }

    public func getDriverLastName(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].driversLastName
    }

    public func getBirthDate(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].birthDate
    }

    public func getBirthLocation(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].birthLocation
    }
    
    public func getChampionshipsWon(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].championshipsWon
    }
    
    public func getRacesParticipated(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].racesParticipated
    }
    
    public func getPodiumsEarned(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].podiumsEarned
    }
    
    public func getPointsEarned(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].pointsEarned
    }
    
    public func getBestPositionRaces(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].bestPositionRaces
    }
    
    public func getBestGridPosition(indexPath: IndexPath) -> String {
        return dataDriversDetailScreen[indexPath.row].bestGridPosition
    }

}
