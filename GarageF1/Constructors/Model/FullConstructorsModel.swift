//
//  HomeConstructorsModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 22/06/23.
//

import Foundation
import UIKit

// MARK: - HomeConstructorsModel
struct FullConstructorsModel: Codable {
    var mrData: MRData18

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData18: Codable {
    var xmlns: String
    var series: String
    var url: String
    var limit, offset, total: String
    var standingsTable: StandingsTable18

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

// MARK: - StandingsTable
struct StandingsTable18: Codable {
    var season: String
    var standingsLists: [StandingsList18]

    enum CodingKeys: String, CodingKey {
        case season
        case standingsLists = "StandingsLists"
    }
}

// MARK: - StandingsList
struct StandingsList18: Codable {
    var season, round: String
    var constructorStandings: [ConstructorStanding18]

    enum CodingKeys: String, CodingKey {
        case season, round
        case constructorStandings = "ConstructorStandings"
    }
}

// MARK: - ConstructorStanding
struct ConstructorStanding18: Codable {
    var position, positionText, points, wins: String
    var constructor: Constructor18

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case constructor = "Constructor"
    }
}

// MARK: - Constructor
struct Constructor18: Codable {
    var constructorID: String
    var url: String
    var name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}



