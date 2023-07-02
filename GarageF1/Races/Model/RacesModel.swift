//
//  RacesModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import Foundation


// MARK: - Welcome
struct RacesModel: Codable {
    let mrData: MRDataRacesModel

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRDataRacesModel: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let raceTable: RaceTableRacesModel

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case raceTable = "RaceTable"
    }
}

// MARK: - RaceTable
struct RaceTableRacesModel: Codable {
    let season: String
    let races: [RaceRacesModel]

    enum CodingKeys: String, CodingKey {
        case season
        case races = "Races"
    }
}

// MARK: - Race
struct RaceRacesModel: Codable {
    let season, round: String
    let url: String
    let raceName: String
    let circuit: CircuitRacesModel
    let date, time: String
    let firstPractice, secondPractice: FirstPracticeRacesModel
    let thirdPractice: FirstPracticeRacesModel?
    let qualifying: FirstPracticeRacesModel
    let sprint: FirstPracticeRacesModel?

    enum CodingKeys: String, CodingKey {
        case season, round, url, raceName
        case circuit = "Circuit"
        case date, time
        case firstPractice = "FirstPractice"
        case secondPractice = "SecondPractice"
        case thirdPractice = "ThirdPractice"
        case qualifying = "Qualifying"
        case sprint = "Sprint"
    }
}

// MARK: - Circuit
struct CircuitRacesModel: Codable {
    let circuitID: String
    let url: String
    let circuitName: String
    let location: LocationRacesModel

    enum CodingKeys: String, CodingKey {
        case circuitID = "circuitId"
        case url, circuitName
        case location = "Location"
    }
}

// MARK: - Location
struct LocationRacesModel: Codable {
    let lat, long, locality, country: String
}

// MARK: - FirstPractice
struct FirstPracticeRacesModel: Codable {
    let date, time: String
}

