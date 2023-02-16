//
//  DriversetailCustomCellViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import UIKit

class DriversDetailCustomCellViewModel {
    
    private var data: DriversDetailModel
    
    init(data:DriversDetailModel){
        self.data = data
    }
    
    public var getBirthDate: String {
        return data.birthDate
    }

    public var getBirthLocation: String {
        return data.birthLocation
    }
    
    public var getChampionshipsWon: String {
        return data.championshipsWon
    }
    
    public var getRacesParticipated: String {
        return data.racesParticipated
    }
    
    public var getPodiumsEarned: String {
        return data.podiumsEarned
    }
    
    public var getPointsEarned: String {
        return data.pointsEarned
    }
    
    public var getBestPositionRaces: String {
        return data.bestPositionRaces
    }
    
    public var getBestGridPosition: String {
        return data.bestGridPosition
    }
}
