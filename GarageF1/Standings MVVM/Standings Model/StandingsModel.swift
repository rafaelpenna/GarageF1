//
//  StandingsModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import Foundation
import UIKit

struct Standings {
    var position: String
    var teamsName: String
    var driversCode: String
    var time: String
    var pointsWon: String
}

struct BestLap {
    var nameDriver: String
    var bestTime: String
}

struct Tracks {
    var circuitCountry: String
    var circuitImage: UIImage
    var circuitLength: String
    var circuitLaps: String
    var firstGP: String
    var raceDistance: String
    var trackRecord: String
    var trackRecordDriver: String
    var trackRecordYear: String
}
