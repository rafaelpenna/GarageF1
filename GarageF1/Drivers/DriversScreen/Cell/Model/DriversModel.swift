//
//  SeasonDrivers.swift
//  GarageF1
//
//  Created by Rafael Penna on 02/06/23.
//

import Foundation

struct DriversModel: Codable {
    var mrData: MRDataDriversModel

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

struct MRDataDriversModel: Codable {
    var xmlns: String
    var series: String
    var url: String
    var limit, offset, total: String
    var standingsTable: StandingsTableDriversModel

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

struct StandingsTableDriversModel: Codable {
    var season: String
    var standingsLists: [StandingsListDriversModel]

    enum CodingKeys: String, CodingKey {
        case season
        case standingsLists = "StandingsLists"
    }
}

struct StandingsListDriversModel: Codable {
    var season, round: String
    var driverStandings: [DriverStandingDriversModel]

    enum CodingKeys: String, CodingKey {
        case season, round
        case driverStandings = "DriverStandings"
    }
}

struct DriverStandingDriversModel: Codable {
    var position, positionText, points, wins: String
    var driver: DriverDriversModel
    var constructors: [ConstructorDriversModel]

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case driver = "Driver"
        case constructors = "Constructors"
    }
}

struct ConstructorDriversModel: Codable {
    var constructorID: String
    var url: String
    var name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}

struct DriverDriversModel: Codable {
    var driverID, permanentNumber,code: String
    var url: String
    var givenName, familyName, dateOfBirth, nationality: String

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case permanentNumber, code, url, givenName, familyName, dateOfBirth, nationality
    }
}
