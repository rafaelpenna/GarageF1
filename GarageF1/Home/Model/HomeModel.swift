//
//  HomeModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 14/06/23.
//

import Foundation

// MARK: - HomeModel
struct HomeModel: Codable {
    var mrData: MRData10

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData10: Codable {
    var xmlns: String?
    var series: String?
    var url: String?
    var limit, offset, total: String?
    var standingsTable: StandingsTable10

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

// MARK: - StandingsTable
struct StandingsTable10: Codable {
    var season, round: String?
    var standingsLists: [StandingsList10]

    enum CodingKeys: String, CodingKey {
        case season, round
        case standingsLists = "StandingsLists"
    }
}

// MARK: - StandingsList
struct StandingsList10: Codable {
    var season, round: String?
    var driverStandings: [DriverStanding10]

    enum CodingKeys: String, CodingKey {
        case season, round
        case driverStandings = "DriverStandings"
    }
}

// MARK: - DriverStanding
struct DriverStanding10: Codable {
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
struct Constructor10: Codable {
    var constructorID: String?
    var url: String?
    var name, nationality: String?

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}

// MARK: - Driver
struct Driver10: Codable {
    var driverID, permanentNumber, code: String?
    var url: String?
    var givenName, familyName, dateOfBirth, nationality: String?

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case permanentNumber, code, url, givenName, familyName, dateOfBirth, nationality
    }
}


