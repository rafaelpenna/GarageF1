//
//  FullConstructorsViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 22/06/23.
//

import Foundation
import UIKit

enum ConstructorsTypeFetch {
    case mock
    case request
}

protocol ConstructorsViewModelProtocol: AnyObject {
    func reloadTableView()
}

protocol FullConstructorsViewModelDelegate: AnyObject {
    func success()
    func error(_ message: String)
}

class FullConstructorsViewModel {
    
    private let service: FullConstructorsService = FullConstructorsService()
    private weak var delegate: FullConstructorsViewModelDelegate?
    private var dataConstructors: [ConstructorStanding18] = []
    
    public func delegate(delegate: FullConstructorsViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public func fetch(_ typeFetch: ConstructorsTypeFetch){
        switch typeFetch {
        case .mock:
            self.service.getConstructorsDataFromJson(fromFileName: "fullConstructors") { success, error in
                if let success = success {
                    self.dataConstructors = success.mrData.standingsTable.standingsLists[0].constructorStandings
                    self.delegate?.success()
                    print(success)
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        case .request:
            self.service.getConstructorsData(fromURL: "https://ergast.com/api/f1/2023/constructorStandings.json") { success, error in
                if let success = success {
                    self.dataConstructors = success.mrData.standingsTable.standingsLists[0].constructorStandings
                    self.delegate?.success()
                    print(success)
                } else {
                    self.delegate?.error(error?.localizedDescription ?? "")
                }
            }
        }
    }
    
    public var numberOfRows:Int{
        return dataConstructors.count
    }

    public func loadCurrentDriver(indexPath: IndexPath) -> ConstructorStanding18 {
        return dataConstructors[indexPath.row]
    }
    
    public func getConstructorsPosition(indexPath: IndexPath) -> String {
        return dataConstructors[indexPath.row].position
    }
    
    public func getConstructorsName(indexPath: IndexPath) -> String {
        return dataConstructors[indexPath.row].constructor.name
    }
    
    public func getConstructorsPoints(indexPath: IndexPath) -> String {
        return dataConstructors[indexPath.row].points
    }
    
    public func getConstructorsPhoto(indexPath: IndexPath) -> UIImage {
        if dataConstructors[indexPath.row].constructor.constructorID == "red_bull" {
            return UIImage(named: "redbulllogo") ?? UIImage()
        } else if dataConstructors[indexPath.row].constructor.constructorID == "mercedes" {
            return UIImage(named: "mercedeslogo") ?? UIImage()
        } else if dataConstructors[indexPath.row].constructor.constructorID == "aston_martin" {
            return UIImage(named: "astonmartinlogo") ?? UIImage()
        } else if dataConstructors[indexPath.row].constructor.constructorID == "ferrari" {
            return UIImage(named: "ferrarilogo") ?? UIImage()
        } else if dataConstructors[indexPath.row].constructor.constructorID == "alpine" {
            return UIImage(named: "alpinelogo") ?? UIImage()
        } else if dataConstructors[indexPath.row].constructor.constructorID == "mclaren" {
            return UIImage(named: "mclarenlogo") ?? UIImage()
        } else if dataConstructors[indexPath.row].constructor.constructorID == "alfa" {
            return UIImage(named: "alfaromeologo") ?? UIImage()
        } else if dataConstructors[indexPath.row].constructor.constructorID == "haas" {
            return UIImage(named: "haaslogo") ?? UIImage()
        } else if dataConstructors[indexPath.row].constructor.constructorID == "williams" {
            return UIImage(named: "williamslogo") ?? UIImage()
        } else if dataConstructors[indexPath.row].constructor.constructorID == "alphatauri" {
            return UIImage(named: "alphataurilogo") ?? UIImage()
        }
        return UIImage()
    }
}




