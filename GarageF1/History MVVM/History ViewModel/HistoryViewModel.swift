//
//  HistoryViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import UIKit

class HistoryViewModel {
    
    var dataDrivers: [HistoryDriversModel] = [HistoryDriversModel(driversPosition: "1", driversName: "Charles ", driversLastName: "Leclerc", teamsDriversName: "Ferrari", seasonDriversPoints: "86"),
                                              HistoryDriversModel(driversPosition: "2", driversName: "Max ", driversLastName: "Verstappen", teamsDriversName: "Red Bull Racing", seasonDriversPoints: "80"),
                                              HistoryDriversModel(driversPosition: "3", driversName: "Sergio ", driversLastName: "Perez", teamsDriversName: "Red Bull Racing", seasonDriversPoints: "74"),
                                              HistoryDriversModel(driversPosition: "4", driversName: "Carlos ", driversLastName: "Sainz", teamsDriversName: "Ferrari", seasonDriversPoints: "62"),
                                              HistoryDriversModel(driversPosition: "5", driversName: "Lando ", driversLastName: "Norris", teamsDriversName: "McLaren",  seasonDriversPoints: "55"),
                                              HistoryDriversModel(driversPosition: "6", driversName: "Lewis ", driversLastName: "Hamilton", teamsDriversName: "Mercedes", seasonDriversPoints: "42"),
                                              HistoryDriversModel(driversPosition: "7", driversName: "Sebastian ", driversLastName: "Vettel", teamsDriversName: "Aston Martin", seasonDriversPoints: "33"),
                                              HistoryDriversModel(driversPosition: "8", driversName: "Valtteri ", driversLastName: "Bottas", teamsDriversName: "Alfa Romeo", seasonDriversPoints: "28"),
                                              HistoryDriversModel(driversPosition: "9", driversName: "George ", driversLastName: "Russel", teamsDriversName: "Mercedes", seasonDriversPoints: "24")]
    
    var dataTeams: [HistoryTeamsModel] = [HistoryTeamsModel(teamsPosition: "1", teamsName: "Ferrari", seasonTeamsPoints: "613"),
        HistoryTeamsModel(teamsPosition: "2", teamsName: "Red Bull Racing", seasonTeamsPoints: "428"),
        HistoryTeamsModel(teamsPosition: "3", teamsName: "Mercedes", seasonTeamsPoints: "343"),
        HistoryTeamsModel(teamsPosition: "4", teamsName: "McLaren",  seasonTeamsPoints: "375"),
        HistoryTeamsModel(teamsPosition: "5", teamsName: "Aston Martin", seasonTeamsPoints: "255"),
        HistoryTeamsModel(teamsPosition: "6", teamsName: "Alpha Tauri", seasonTeamsPoints: "142"),
        HistoryTeamsModel(teamsPosition: "7", teamsName: "Alpine", seasonTeamsPoints: "77"),
        HistoryTeamsModel(teamsPosition: "8", teamsName: "Haas F1 Team", seasonTeamsPoints: "23"),
        HistoryTeamsModel(teamsPosition: "9", teamsName: "Williams", seasonTeamsPoints: "15"),
        HistoryTeamsModel(teamsPosition: "10", teamsName: "Alfa Romeo", seasonTeamsPoints: "0")]
    
}
