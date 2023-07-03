//
//  DuelModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import Foundation
import UIKit


struct DuelInfoModel: Codable {
    let mrData: MRDataDuelInfoModel

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

struct MRDataDuelInfoModel: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let standingsTable: StandingsTableDuelInfoModel

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

struct StandingsTableDuelInfoModel: Codable {
    let driverID: String
    let standingsLists: [StandingsListDuelInfoModel]

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case standingsLists = "StandingsLists"
    }
}

struct StandingsListDuelInfoModel: Codable {
    let season, round: String
    let driverStandings: [DriverStandingDuelInfoModel]

    enum CodingKeys: String, CodingKey {
        case season, round
        case driverStandings = "DriverStandings"
    }
}

struct DriverStandingDuelInfoModel: Codable {
    let position, positionText, points, wins: String
    let driver: DriverDuelInfoModel
    let constructors: [ConstructorDuelInfoModel]

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case driver = "Driver"
        case constructors = "Constructors"
    }
}

struct ConstructorDuelInfoModel: Codable {
    let constructorID: String
    let url: String
    let name: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name
    }
}

struct DriverDuelInfoModel: Codable {
    let url: String
    let dateOfBirth: String
    let nationality: String


    enum CodingKeys: String, CodingKey {
        case url, dateOfBirth, nationality
    }
}


// MARK: - Driver List Model
struct DriversListModel: Codable {
    let mrData: MRDataDriversListModel

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

struct MRDataDriversListModel: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let driverTable: DriverTableDriversListModel

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case driverTable = "DriverTable"
    }
}

struct DriverTableDriversListModel: Codable {
    let drivers: [DriverDriversListModel]

    enum CodingKeys: String, CodingKey {
        case drivers = "Drivers"
    }
}

struct DriverDriversListModel: Codable {
    let driverID: String
    let url: String
    let givenName, familyName, dateOfBirth, nationality: String
    let permanentNumber, code: String?
    
    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case url, givenName, familyName, dateOfBirth, nationality, permanentNumber, code
    }
}
