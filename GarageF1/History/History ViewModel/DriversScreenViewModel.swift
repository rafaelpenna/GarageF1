//
//  DriversScreenViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/03/23.
//

import UIKit

class DriversScreenViewModel {
    
    private var data: DriverStandingHistoryDriversModel
    
    init(data:DriverStandingHistoryDriversModel){
        self.data = data
    }
    
    public var getDriversPosition: String {
        return data.positionText
    }
    
    public var getDriversName: String {
        return data.driver.givenName
    }
    
    public var getDriversLastName: String {
        return data.driver.familyName
    }
    
    public var getTeamsDriversName: String {
        return data.constructors[0].name
    }
    
    public var getSeasonDriversPoints: String {
        return data.points
    }
}
