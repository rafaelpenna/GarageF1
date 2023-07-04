//
//  HomeDriversViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 01/07/23.
//

import Foundation

// MARK: - SeasonDriversModel
struct HomeDriversModel: Codable {
    var mrData: MRData20

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData20: Codable {
    var xmlns: String
    var series: String
    var url: String
    var limit, offset, total: String
    var standingsTable: StandingsTable20

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

// MARK: - StandingsTable
struct StandingsTable20: Codable {
    var season: String
    var standingsLists: [StandingsList20]

    enum CodingKeys: String, CodingKey {
        case season
        case standingsLists = "StandingsLists"
    }
}

// MARK: - StandingsList
struct StandingsList20: Codable {
    var season, round: String
    var driverStandings: [DriverStanding20]

    enum CodingKeys: String, CodingKey {
        case season, round
        case driverStandings = "DriverStandings"
    }
}

// MARK: - DriverStanding
struct DriverStanding20: Codable {
    var position, positionText, points, wins: String
    var driver: Driver20
    var constructors: [Constructor20]

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case driver = "Driver"
        case constructors = "Constructors"
    }
}

// MARK: - Constructor
struct Constructor20: Codable {
    var constructorID: String
    var url: String
    var name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}

// MARK: - Driver
struct Driver20: Codable {
    var driverID, permanentNumber,code: String
    var url: String
    var givenName, familyName, dateOfBirth, nationality: String

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case permanentNumber, code, url, givenName, familyName, dateOfBirth, nationality
    }
}


