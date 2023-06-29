//
//  StandingCustomViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/04/23.
//

import Foundation
import UIKit

enum TypeFetch {
    case mock
    case request
}

protocol StandingCustomViewModelProtocol: AnyObject {
    func reloadColetionView()
}

protocol StandingCustomViewModelDelegate: AnyObject {
    func success()
    func error(_ message: String)
}

class StandingCustomViewModel {
    
    private let service: HighlightsService = HighlightsService()
    private weak var delegate: StandingCustomViewModelDelegate?
    private var dataHomeRacer: [DriverStanding10] = []
    
    public func delegate(delegate: StandingCustomViewModelDelegate?) {
        self.delegate = delegate
    }

    
    public func fetchHighlights(_ typeFetch: TypeFetch) {
        switch typeFetch {
        case .mock:
            self.service.getDriversDataFromJson { success, error in
                if let success = success {
                    self.dataHomeRacer = success.mrData.standingsTable.standingsLists[0].driverStandings
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.service.getDriversDataFromURL(fromURL: "https://ergast.com/api/f1/current/driverStandings.json") { success, error in
                if let success = success {
                    self.dataHomeRacer = success.mrData.standingsTable.standingsLists[0].driverStandings
                    self.delegate?.success()
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    public var numberOfRows:Int{
        return dataHomeRacer.count
    }
    
    public func loadCurrentDriver(indexPath: IndexPath) -> DriverStanding10 {
        return dataHomeRacer[indexPath.row]
    }
    
    public func getDriverPosition(indexPath: IndexPath) -> String {
        return dataHomeRacer[indexPath.row].position ?? ""
    }
    
    public func getDriverLastName(indexPath: IndexPath) -> String {
        return dataHomeRacer[indexPath.row].driver?.familyName ?? ""
    }

    public func getTeam(indexPath: IndexPath) -> String {
        return dataHomeRacer[indexPath.row].constructors?[2].name ?? ""
    }
    
    public func getDriverPhoto(indexPath: IndexPath) -> UIImage {
        if dataHomeRacer[indexPath.row].driver?.familyName == "Verstappen" {
            return UIImage(named: "max") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Pérez" {
            return UIImage(named: "sergio") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Stroll" {
            return UIImage(named: "lance") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Sainz" {
            return UIImage(named: "carlos") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Russell" {
            return UIImage(named: "george") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Hamilton" {
            return UIImage(named: "lewis") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Alonso" {
            return UIImage(named: "fernando") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Ocon" {
            return UIImage(named: "esteban") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Gasly" {
            return UIImage(named: "pierre") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Norris" {
            return UIImage(named: "lando") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Hülkenberg" {
            return UIImage(named: "nico") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Piastri" {
            return UIImage(named: "oscar") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Bottas" {
            return UIImage(named: "valteri") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Zhou" {
            return UIImage(named: "guanyu") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Tsunoda" {
            return UIImage(named: "yuki") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Magnussen" {
            return UIImage(named: "kevin") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Albon" {
            return UIImage(named: "alexander") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "de Vries" {
            return UIImage(named: "nyck") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Sargeant" {
            return UIImage(named: "logan") ?? UIImage()
        } else if dataHomeRacer[indexPath.row].driver?.familyName == "Leclerc" {
            return UIImage(named: "charles") ?? UIImage()
        }
        return UIImage()
    }
}



