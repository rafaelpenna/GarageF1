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

protocol DriversViewModelProtocol: AnyObject {
    func reloadTableView()
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
            self.service.getSeasonDriversFromJson(fromFileName: "seasonDrivers") { success, error in
                if let success = success {
                    self.dataDriversScreen = success.mrData.standingsTable.standingsLists[0].driverStandings
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.service.getDrivers(fromURL: "https://ergast.com/api/f1/current/driverStandings.json") { success, error in
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
        if dataDriversScreen[indexPath.row].driver.familyName == "Verstappen" {
            return UIImage(named: "max") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Pérez" {
            return UIImage(named: "sergio") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Stroll" {
            return UIImage(named: "lance") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Sainz" {
            return UIImage(named: "carlos") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Russell" {
            return UIImage(named: "george") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Hamilton" {
            return UIImage(named: "lewis") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Alonso" {
            return UIImage(named: "fernando") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Ocon" {
            return UIImage(named: "esteban") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Gasly" {
            return UIImage(named: "pierre") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Norris" {
            return UIImage(named: "lando") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Hülkenberg" {
            return UIImage(named: "nico") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Piastri" {
            return UIImage(named: "oscar") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Bottas" {
            return UIImage(named: "valteri") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Zhou" {
            return UIImage(named: "guanyu") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Tsunoda" {
            return UIImage(named: "yuki") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Magnussen" {
            return UIImage(named: "kevin") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Albon" {
            return UIImage(named: "alexander") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "de Vries" {
            return UIImage(named: "nyck") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Sargeant" {
            return UIImage(named: "logan") ?? UIImage()
        } else if dataDriversScreen[indexPath.row].driver.familyName == "Leclerc" {
            return UIImage(named: "charles") ?? UIImage()
        }
        return UIImage()
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
