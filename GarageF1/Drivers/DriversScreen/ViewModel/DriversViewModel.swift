//
//  DriversViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

enum TypeFetch {
    case mock
    case request
}

protocol DriversViewModelDelegate: AnyObject {
    func success()
    func error(_ message: String)
}

class DriversViewModel {
    
    private let service: SeasonDriversService = SeasonDriversService()
    private weak var delegate: DriversViewModelDelegate?
    private var dataDriversScreen:[DriverStanding] = []
    
    public func delegate(delegate: DriversViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetch(_ typeFetch: TypeFetch){
        switch typeFetch {
        case .mock:
            self.service.getSeasonDriversFromJson { success, error in
                if let success = success {
                    self.dataDriversScreen = success.mrData.standingsTable.standingsLists[0].driverStandings
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.service.getDrivers { success, error in
                if let success = success {
                    self.dataDriversScreen = success.mrData.standingsTable.standingsLists[0].driverStandings
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    //MARK: - Functions to get info to TableView Drivers
    
    public var numberOfRows:Int{
        return self.dataDriversScreen.count
    }
    
    public func loadCurrentDriver(indexPath: IndexPath) -> DriverStanding {
        return dataDriversScreen[indexPath.row]
    }
    
    public func getDriverPosition(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].position
    }
    
    public func getDriverPhoto(indexPath: IndexPath) -> UIImage {
        return UIImage(named: "charles") ?? UIImage()
    }
    
    public func getDriverName(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.givenName
    }
    
    public func getDriverLastName(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.familyName
    }
    
    public func getTeam(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].constructors[2].name
    }
    
    public func getPoints(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].points
    }
    
    
    //MARK: - Functions to get info to Driver Detail Data
    
    public func getBirthDate(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.dateOfBirth
    }

    public func getBirthLocation(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.nationality
    }

    public func getChampionshipsWon(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.givenName
    }

    public func getRacesParticipated(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.givenName
    }

    public func getPodiumsEarned(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.givenName
    }

    public func getPointsEarned(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.givenName
    }

    public func getBestPositionRaces(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.givenName
    }

    public func getBestGridPosition(indexPath: IndexPath) -> String {
        return dataDriversScreen[indexPath.row].driver.givenName
    }
}
