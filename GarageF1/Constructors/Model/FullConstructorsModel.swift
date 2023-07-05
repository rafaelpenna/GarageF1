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
    var mrData: MRDataFullConstructorsModel

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRDataFullConstructorsModel: Codable {
    var xmlns: String
    var series: String
    var url: String
    var limit, offset, total: String
    var standingsTable: StandingsTableFullConstructorsModel

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case standingsTable = "StandingsTable"
    }
}

// MARK: - StandingsTable
struct StandingsTableFullConstructorsModel: Codable {
    var season: String
    var standingsLists: [StandingsListFullConstructorsModel]

    enum CodingKeys: String, CodingKey {
        case season
        case standingsLists = "StandingsLists"
    }
}

// MARK: - StandingsList
struct StandingsListFullConstructorsModel: Codable {
    var season, round: String
    var constructorStandings: [ConstructorStandingFullConstructorsModel]

    enum CodingKeys: String, CodingKey {
        case season, round
        case constructorStandings = "ConstructorStandings"
    }
}

// MARK: - ConstructorStanding
struct ConstructorStandingFullConstructorsModel: Codable {
    var position, positionText, points, wins: String
    var constructor: ConstructorFullResultsModel

    enum CodingKeys: String, CodingKey {
        case position, positionText, points, wins
        case constructor = "Constructor"
    }
}

// MARK: - Constructor
struct ConstructorFullResultsModel: Codable {
    var constructorID: String
    var url: String
    var name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}



