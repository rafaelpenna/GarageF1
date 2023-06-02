//
//  DriversCustomCellViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversCustomCellViewModel {
    
    private var data: StandingsList
    
    init(data:StandingsList){
        self.data = data
    }
    
    public var getDriversPosition: String {
        return data.driverStandings[0].positionText
    }
    
    public var getDriversPhoto: UIImage {
        return UIImage(named: "charles") ?? UIImage()
    }
    
    public var getDriversName: String {
        return data.driverStandings[0].driver.givenName
    }
    
    public var getDriversLastName: String {
        return data.driverStandings[0].driver.familyName
    }
    
    public var getTeam: String {
        return data.driverStandings[0].constructors[0].name
    }
    
    public var getPoints: String {
        return data.driverStandings[0].points
    }
}
