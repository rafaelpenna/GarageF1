//
//  DriversViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversViewModel {
    
    var dataDriversScreen: [Drivers] = [Drivers(driversPosition: "1", driversPhoto: UIImage(named: "Leclerc1") ?? UIImage(), driversName: "Charles ", driversLastName: "Leclerc", teamsName: "Ferrari", currentPoints: "86"),
                                  Drivers(driversPosition: "2", driversPhoto: UIImage(named: "Max-1") ?? UIImage(), driversName: "Max ", driversLastName: "Verstappen", teamsName: "Red Bull Racing", currentPoints: "80"),
                                  Drivers(driversPosition: "3", driversPhoto: UIImage(named: "sergio") ?? UIImage(), driversName: "Sergio ", driversLastName: "Perez", teamsName: "Red Bull Racing", currentPoints: "74"),
                                  Drivers(driversPosition: "4", driversPhoto: UIImage(named: "sainz") ?? UIImage(), driversName: "Carlos ", driversLastName: "Sainz", teamsName: "Ferrari", currentPoints: "62"),
                                  Drivers(driversPosition: "5", driversPhoto: UIImage(named: "Norris") ?? UIImage(), driversName: "Lando ", driversLastName: "Norris", teamsName: "McLaren", currentPoints: "55"),
                                  Drivers(driversPosition: "6", driversPhoto: UIImage(named: "Hamilton") ?? UIImage(), driversName: "Lewis ", driversLastName: "Hamilton", teamsName: "Mercedes", currentPoints: "42"),
                                  Drivers(driversPosition: "7", driversPhoto: UIImage(named: "Vettel") ?? UIImage(), driversName: "Sebastian ", driversLastName: "Vettel", teamsName: "Aston Martin", currentPoints: "33"),
                                  Drivers(driversPosition: "8", driversPhoto: UIImage(named: "Bottas") ?? UIImage(), driversName: "Valtteri ", driversLastName: "Bottas", teamsName: "Alfa Romeo", currentPoints: "28"),
                                  Drivers(driversPosition: "9", driversPhoto: UIImage(named: "george") ?? UIImage(), driversName: "George ", driversLastName: "Russel", teamsName: "Mercedes", currentPoints: "24")]
    
    
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
    
}
