//
//  RacesModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import Foundation


// MARK: - Welcome
struct RacesModel: Codable {
    let mrData: MRData3

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData3: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let raceTable: RaceTable3

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case raceTable = "RaceTable"
    }
}

// MARK: - RaceTable
struct RaceTable3: Codable {
    let season: String
    let races: [Race3]

    enum CodingKeys: String, CodingKey {
        case season
        case races = "Races"
    }
}

// MARK: - Race
struct Race3: Codable {
    let season, round: String
    let url: String
    let raceName: String
    let circuit: Circuit3
    let date, time: String
    let firstPractice, secondPractice: FirstPractice
    let thirdPractice: FirstPractice?
    let qualifying: FirstPractice
    let sprint: FirstPractice?

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
struct Circuit3: Codable {
    let circuitID: String
    let url: String
    let circuitName: String
    let location: Location3

    enum CodingKeys: String, CodingKey {
        case circuitID = "circuitId"
        case url, circuitName
        case location = "Location"
    }
}

// MARK: - Location
struct Location3: Codable {
    let lat, long, locality, country: String
}

// MARK: - FirstPractice
struct FirstPractice: Codable {
    let date, time: String
}

