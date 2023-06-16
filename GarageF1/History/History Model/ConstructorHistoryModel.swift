//
//  HistoryModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import Foundation
import UIKit


struct HistoryDriversModel: Codable {
    var mrData: MRData8

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData8: Codable {
    var xmlns: String
    var series: String
    var url: String
    var limit, offset, total: String
    var standingsTable: StandingsTable8

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

// MARK: - StandingsTable
struct StandingsTable8: Codable {
    var season: String
    var standingsLists: [StandingsList8]

    enum CodingKeys: String, CodingKey {
        case season
        case standingsLists = "StandingsLists"
    }
}

// MARK: - StandingsList
struct StandingsList8: Codable {
    var season, round: String
    var driverStandings: [DriverStanding8]

    enum CodingKeys: String, CodingKey {
        case season, round
        case driverStandings = "DriverStandings"
    }
}

// MARK: - DriverStanding
struct DriverStanding8: Codable {
    var position, positionText, points, wins: String
    var driver: Driver8
    var constructors: [Constructor8]

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case driver = "Driver"
        case constructors = "Constructors"
    }
}

// MARK: - Constructor
struct Constructor8: Codable {
    var constructorID: String
    var url: String
    var name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}

// MARK: - Driver
struct Driver8: Codable {
    var driverID: String
    var url: String
    var givenName, familyName, dateOfBirth, nationality: String

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case url, givenName, familyName, dateOfBirth, nationality
    }
}






// MARK: - Welcome
struct ConstructorHistoryModel: Codable {
    let mrData: MRData1

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData1: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let standingsTable: StandingsTable1

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

// MARK: - StandingsTable
struct StandingsTable1: Codable {
    let season: String
    let standingsLists: [StandingsList1]

    enum CodingKeys: String, CodingKey {
        case season
        case standingsLists = "StandingsLists"
    }
}

// MARK: - StandingsList
struct StandingsList1: Codable {
    let season, round: String
    let constructorStandings: [ConstructorStanding1]

    enum CodingKeys: String, CodingKey {
        case season, round
        case constructorStandings = "ConstructorStandings"
    }
}

// MARK: - ConstructorStanding
struct ConstructorStanding1: Codable {
    let position, positionText, points, wins: String
    let constructor: Constructor1

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case constructor = "Constructor"
    }
}

// MARK: - Constructor
struct Constructor1: Codable {
    let constructorID: String
    let url: String
    let name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}








// MARK: - Welcome
struct HistoryYearModel: Codable {
    let mrData: MRData2

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData2: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let seasonTable: SeasonTable2

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case seasonTable = "SeasonTable"
    }
}

// MARK: - SeasonTable
struct SeasonTable2: Codable {
    let seasons: [Season2]

    enum CodingKeys: String, CodingKey {
        case seasons = "Seasons"
    }
}

// MARK: - Season
struct Season2: Codable {
    let season: String
    let url: String
}



