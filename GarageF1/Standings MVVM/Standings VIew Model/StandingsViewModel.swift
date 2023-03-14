//
//  StandingsViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import Foundation
import UIKit

class StandingsViewModel {
    
    var dataStandings: [Standings] = [Standings(position: "1", teamsName: "Mercedes", driversCode: "RUS", time: "1:38:34.044", pointsWon: "26"),
                                      Standings(position: "2", teamsName: "Mercedes", driversCode: "HAM", time: "+ 1.529s", pointsWon: "18"),
                                      Standings(position: "3", teamsName: "Ferrari", driversCode: "SAI", time: "+ 4.051s", pointsWon: "15"),
                                      Standings(position: "4", teamsName: "Ferrari", driversCode: "LEC", time: "+ 8.441s", pointsWon: "12"),
                                      Standings(position: "5", teamsName: "Alpine", driversCode: "ALO", time: "+ 9.561s", pointsWon: "10"),
                                      Standings(position: "6", teamsName: "Red Bull Racing", driversCode: "VER", time: "+ 10.056s", pointsWon: "8"),
                                      Standings(position: "7", teamsName: "Red Bull Racing", driversCode: "PER", time: "+ 14.08s", pointsWon: "6"),
                                      Standings(position: "8", teamsName: "Alpine", driversCode: "OCO", time: "+ 18.69s", pointsWon: "4"),
                                      Standings(position: "9", teamsName: "Alfa Romeo", driversCode: "BOT", time: "+ 22.552s", pointsWon: "2"),
                                      Standings(position: "10", teamsName: "Aston Martin", driversCode: "STR", time: "+ 23.552s", pointsWon: "1"),
                                      Standings(position: "11", teamsName: "Aston Martin", driversCode: "VET", time: "+ 26.183s", pointsWon: "0"),
                                      Standings(position: "12", teamsName: "Alfa Romeo", driversCode: "ZHO", time: "+ 29.325s", pointsWon: "0"),
                                      Standings(position: "13", teamsName: "F1 Haas", driversCode: "MSC", time: "+ 29.899s", pointsWon: "0"),]
    
    var dataTracks = Tracks(circuitCountry: "Brazil", circuitImage: UIImage(named: "interlagos") ?? UIImage(), circuitLength: "4.309", circuitLaps: "71", firstGP: "1973", raceDistance: "305.879", trackRecord: "1.10.540", trackRecordDriver: "Valtteri Bottas", trackRecordYear: "2018")
    
    var dataBestLap = BestLap(nameDriver: "RUSSEL", bestTime: "1:13:785")
    
}
