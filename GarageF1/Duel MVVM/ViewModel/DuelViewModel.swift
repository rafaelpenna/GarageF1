//
//  DuelViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelViewModel {
    
    var dataDriversLeft = DuelModel(driversName: "Michael", driversLastName: "Schumacher", driversBirthDate: "03/01/1969", driversAge: "(53 anos)", driversBirthPlace: "Hurth-Hermullheim", driversCountry: "Alemanha", championshipsWon: "7 (1994, 1995, 2000, 2002, 2003 e 2004)", racesParticipated: "308", podiumsWon: "155", pointsEarned: "1566", wins: "91")
    var dataDriversRight: [DuelModel] = [DuelModel(driversName: "Max", driversLastName: "Verstappen", driversBirthDate: "30/09/1997", driversAge: "(24 anos)", driversBirthPlace: "Hasselt", driversCountry: "Bélgica", championshipsWon: "2 (2021 e 2022)", racesParticipated: "163", podiumsWon: "77", pointsEarned: "2011", wins: "35")]
//
//    func getDriversName() -> String {
//        let viewController = DuelViewController()
//        var data = viewController.nameDriver
//        data = dataDriversLeft.driversName
//        return data
//    }
    
}
