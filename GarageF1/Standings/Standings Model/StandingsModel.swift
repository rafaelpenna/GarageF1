//
//  StandingsModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//
import Foundation
import UIKit


struct StandingsModel: Codable {
    let mrData: MRData4

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData4: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let raceTable: RaceTable4

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case raceTable = "RaceTable"
    }
}

// MARK: - RaceTable
struct RaceTable4: Codable {
    let season, round: String
    let races: [Race4]

    enum CodingKeys: String, CodingKey {
        case season, round
        case races = "Races"
    }
}

// MARK: - Race
struct Race4: Codable {
    let season, round: String
    let url: String
    let raceName: String
    let circuit: Circuit4
    let date, time: String
    let results: [Result4]

    enum CodingKeys: String, CodingKey {
        case season, round, url, raceName
        case circuit = "Circuit"
        case date, time
        case results = "Results"
    }
}

// MARK: - Circuit
struct Circuit4: Codable {
    let circuitID: String
    let url: String
    let circuitName: String
    let location: Location4

    enum CodingKeys: String, CodingKey {
        case circuitID = "circuitId"
        case url, circuitName
        case location = "Location"
    }
}

// MARK: - Location
struct Location4: Codable {
    let lat, long, locality, country: String
}

// MARK: - Result
struct Result4: Codable {
    let number, position, positionText, points: String
    let driver: Driver4
    let constructor: Constructor4
    let grid, laps, status: String
    let time: ResultTime4?
    let fastestLap: FastestLap4

    enum CodingKeys: String, CodingKey {
        case number, position, positionText, points
        case driver = "Driver"
        case constructor = "Constructor"
        case grid, laps, status
        case time = "Time"
        case fastestLap = "FastestLap"
    }
}

// MARK: - Constructor
struct Constructor4: Codable {
    let constructorID: String
    let url: String
    let name, nationality: String

    enum CodingKeys: String, CodingKey {
        case constructorID = "constructorId"
        case url, name, nationality
    }
}

// MARK: - Driver
struct Driver4: Codable {
    let driverID, permanentNumber, code: String
    let url: String
    let givenName, familyName, dateOfBirth, nationality: String

    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case permanentNumber, code, url, givenName, familyName, dateOfBirth, nationality
    }
}

// MARK: - FastestLap
struct FastestLap4: Codable {
    let rank, lap: String
    let time: FastestLapTime4
    let averageSpeed: AverageSpeed4

    enum CodingKeys: String, CodingKey {
        case rank, lap
        case time = "Time"
        case averageSpeed = "AverageSpeed"
    }
}

// MARK: - AverageSpeed
struct AverageSpeed4: Codable {
    let units: Units
    let speed: String
}

enum Units: String, Codable {
    case kph = "kph"
}

// MARK: - FastestLapTime
struct FastestLapTime4: Codable {
    let time: String
}

// MARK: - ResultTime
struct ResultTime4: Codable {
    let millis, time: String
}






// MARK: - CircuitModel
struct CircuitModel: Codable {
    let mrData: MRData6

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData6: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let circuitTable: CircuitTable6

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case circuitTable = "CircuitTable"
    }
}

// MARK: - CircuitTable
struct CircuitTable6: Codable {
    let season: String
    let circuits: [Circuit6]

    enum CodingKeys: String, CodingKey {
        case season
        case circuits = "Circuits"
    }
}

// MARK: - Circuit
struct Circuit6: Codable {
    let round, circuitID: String
    let url: String
    let circuitName: String
    let circuitInfo: CircuitInfo6
    let circuitLapRecord: CircuitLapRecord6

    enum CodingKeys: String, CodingKey {
        case round
        case circuitID = "circuitId"
        case url, circuitName
        case circuitInfo = "CircuitInfo"
        case circuitLapRecord = "CircuitLapRecord"
    }
}

// MARK: - CircuitInfo
struct CircuitInfo6: Codable {
    let circuitLayoutImage, numberLaps, lenght, raceDistance: String
    let firstGrandPrix, locality, country: String
}

// MARK: - CircuitLapRecord
struct CircuitLapRecord6: Codable {
    let lapRecordNameDriver, lapRecordTime, lapRecordYear: String
}

