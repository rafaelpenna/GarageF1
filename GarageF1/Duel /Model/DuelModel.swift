//
//  DuelModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import Foundation
import UIKit


struct DuelInfoModel: Codable {
    let mrData: MRData11

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData11: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let standingsTable: StandingsTable11

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

// MARK: - StandingsTable
struct StandingsTable11: Codable {
    let driverID: String
    let standingsLists: [StandingsList11]

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case standingsLists = "StandingsLists"
    }
}

// MARK: - StandingsList
struct StandingsList11: Codable {
    let season, round: String
    let driverStandings: [DriverStanding11]

    enum CodingKeys: String, CodingKey {
        case season, round
        case driverStandings = "DriverStandings"
    }
}

// MARK: - DriverStanding
struct DriverStanding11: Codable {
    let position, positionText, points, wins: String
    let driver: Driver11
    let constructors: [Constructor11]

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case driver = "Driver"
        case constructors = "Constructors"
    }
}

// MARK: - Constructor
struct Constructor11: Codable {
    let constructorID: String
    let url: String
    let name: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name
    }
}

// MARK: - Driver
struct Driver11: Codable {
    let url: String
    let dateOfBirth: String
    let nationality: String


    enum CodingKeys: String, CodingKey {
        case url, dateOfBirth, nationality
    }
}



// MARK: - CircuitModel
struct DriversListModel: Codable {
    let mrData: MRData9

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData9: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let driverTable: DriverTable9

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case driverTable = "DriverTable"
    }
}

// MARK: - DriverTable
struct DriverTable9: Codable {
    let drivers: [Driver9]

    enum CodingKeys: String, CodingKey {
        case drivers = "Drivers"
    }
}

// MARK: - Driver
struct Driver9: Codable {
    let driverID: String
    let url: String
    let givenName, familyName, dateOfBirth, nationality: String
    let permanentNumber, code: String?
    
    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case url, givenName, familyName, dateOfBirth, nationality, permanentNumber, code
    }
}
