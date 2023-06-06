//
//  HistoryModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import Foundation
import UIKit

struct HistoryYearModel {
    var year: String
}


// MARK: - Welcome
struct HistoryModel: Codable {
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



