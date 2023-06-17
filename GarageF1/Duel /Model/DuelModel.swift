//
//  DuelModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import Foundation
import UIKit


struct DuelModel {
    var driversName: String
    var driversLastName: String
    var driversBirthDate: String
    var driversAge: String
    var driversBirthPlace: String
    var driversCountry: String
    var driversChampionshipsWon: String
    var driversChampionshipsWinYear: String
    var driversRacesParticipated: String
    var driversPodiumsWon: String
    var driversPointsEarned: String
    var driversWins: String
}

import Foundation

// MARK: - CircuitModel
struct DriversListModel: Codable {
    let mrData: MRData9

    enum CodingKeys: String, CodingKey {
        case mrData = "MRData"
    }
}

// MARK: - MRData
struct MRData9: Codable {
    let xmlns: String
    let series: String
    let url: String
    let limit, offset, total: String
    let driverTable: DriverTable9

    enum CodingKeys: String, CodingKey {
        case xmlns, series, url, limit, offset, total
        case driverTable = "DriverTable"
    }
}

// MARK: - DriverTable
struct DriverTable9: Codable {
    let drivers: [Driver9]

    enum CodingKeys: String, CodingKey {
        case drivers = "Drivers"
    }
}

// MARK: - Driver
struct Driver9: Codable {
    let driverID: String
    let url: String
    let givenName, familyName, dateOfBirth, nationality: String
    let permanentNumber, code: String?
    
    enum CodingKeys: String, CodingKey {
        case driverID = "driverId"
        case url, givenName, familyName, dateOfBirth, nationality, permanentNumber, code
    }
}
