//
//  DriversCustomCellViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversCustomCellViewModel {
    
    private var data: DriverStanding
    
    init(data:DriverStanding){
        self.data = data
    }
    
    public var getDriversPosition: String {
        return data.positionText
    }
    
    public var getDriversPhoto: UIImage {
        return UIImage()
    }
    
    public var getDriversName: String {
        return data.driver.givenName
    }
    
    public var getDriversLastName: String {
        return data.driver.familyName
    }
    
    public var getTeam: String {
        return data.constructors[0].name
    }
    
    public var getPoints: String {
        return data.points
    }
}
