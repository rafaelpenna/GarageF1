//
//  HomeModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 14/06/23.
//

import Foundation

// MARK: - HomeModel
struct HomeModel: Codable {
    var mrData: MRDataHomeModel

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRDataHomeModel: Codable {
    var xmlns: String?
    var series: String?
    var url: String?
    var limit, offset, total: String?
    var standingsTable: StandingsTableHomeModel

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

// MARK: - StandingsTable
struct StandingsTableHomeModel: Codable {
    var season, round: String?
    var standingsLists: [StandingsListHomeModel]

    enum CodingKeys: String, CodingKey {
        case season, round
        case standingsLists = "StandingsLists"
    }
}

// MARK: - StandingsList
struct StandingsListHomeModel: Codable {
    var season, round: String?
    var driverStandings: [DriverStandingHomeModel]

    enum CodingKeys: String, CodingKey {
        case season, round
        case driverStandings = "DriverStandings"
    }
}

// MARK: - DriverStanding
struct DriverStandingHomeModel: Codable {
    var position, positionText, points, wins: String?
    var driver: Driver?
    var constructors: [Constructor]?

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case driver = "Driver"
        case constructors = "Constructors"
    }
}

// MARK: - Constructor
struct ConstructorHomeModel: Codable {
    var constructorID: String?
    var url: String?
    var name, nationality: String?

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}

// MARK: - Driver
struct DriverHomeModel: Codable {
    var driverID, permanentNumber, code: String?
    var url: String?
    var givenName, familyName, dateOfBirth, nationality: String?

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case permanentNumber, code, url, givenName, familyName, dateOfBirth, nationality
    }
}


