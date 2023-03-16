//
//  DriversScreenViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/03/23.
//

import UIKit

class DriversScreenViewModel {
    
    private var data: HistoryDriversModel
    
    init(data:HistoryDriversModel){
        self.data = data
    }
    
    public var getDriversPosition: String {
        return data.driversPosition
    }
    
    public var getDriversName: String {
        return data.driversName
    }
    
    public var getDriversLastName: String {
        return data.driversLastName
    }
    
    public var getTeamsDriversName: String {
        return data.teamsDriversName
    }
    
    public var getSeasonDriversPoints: String {
        return data.seasonDriversPoints
    }
}
