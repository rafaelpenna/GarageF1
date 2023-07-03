//
//  HistoryModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import Foundation
import UIKit

struct HistoryDriversModel: Codable {
    var mrData: MRDataHistoryDriversModel

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

struct MRDataHistoryDriversModel: Codable {
    var xmlns: String
    var series: String
    var url: String
    var limit, offset, total: String
    var standingsTable: StandingsTableHistoryDriversModel

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

struct StandingsTableHistoryDriversModel: Codable {
    var season: String
    var standingsLists: [StandingsListHistoryDriversModel]

    enum CodingKeys: String, CodingKey {
        case season
        case standingsLists = "StandingsLists"
    }
}

struct StandingsListHistoryDriversModel: Codable {
    var season, round: String
    var driverStandings: [DriverStandingHistoryDriversModel]

    enum CodingKeys: String, CodingKey {
        case season, round
        case driverStandings = "DriverStandings"
    }
}

struct DriverStandingHistoryDriversModel: Codable {
    var position, positionText, points, wins: String
    var driver: DriverHistoryDriversModel
    var constructors: [ConstructorHistoryDriversModel]

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case driver = "Driver"
        case constructors = "Constructors"
    }
}

struct ConstructorHistoryDriversModel: Codable {
    var constructorID: String
    var url: String
    var name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}

struct DriverHistoryDriversModel: Codable {
    var driverID: String
    var url: String
    var givenName, familyName, dateOfBirth, nationality: String

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case url, givenName, familyName, dateOfBirth, nationality
    }
}


// MARK: - ConstructorHistoryModel
struct ConstructorHistoryModel: Codable {
    let mrData: MRDataConstructorHistoryModel

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

struct MRDataConstructorHistoryModel: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let standingsTable: StandingsTableConstructorHistoryModel

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

struct StandingsTableConstructorHistoryModel: Codable {
    let season: String
    let standingsLists: [StandingsListConstructorHistoryModel]

    enum CodingKeys: String, CodingKey {
        case season
        case standingsLists = "StandingsLists"
    }
}

struct StandingsListConstructorHistoryModel: Codable {
    let season, round: String
    let constructorStandings: [ConstructorStandingConstructorHistoryModel]

    enum CodingKeys: String, CodingKey {
        case season, round
        case constructorStandings = "ConstructorStandings"
    }
}

struct ConstructorStandingConstructorHistoryModel: Codable {
    let position, positionText, points, wins: String
    let constructor: ConstructorConstructorHistoryModel

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case constructor = "Constructor"
    }
}

struct ConstructorConstructorHistoryModel: Codable {
    let constructorID: String
    let url: String
    let name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}


// MARK: - HistoryYearModel
struct HistoryYearModel: Codable {
    let mrData: MRDataHistoryYearModel

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

struct MRDataHistoryYearModel: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let seasonTable: SeasonTableHistoryYearModel

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case seasonTable = "SeasonTable"
    }
}

struct SeasonTableHistoryYearModel: Codable {
    let seasons: [SeasonHistoryYearModel]

    enum CodingKeys: String, CodingKey {
        case seasons = "Seasons"
    }
}

struct SeasonHistoryYearModel: Codable {
    let season: String
    let url: String
}
