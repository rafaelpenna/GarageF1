//
//  DriversCustomCellViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversCustomCellViewModel {
    
    private var data: Drivers
    
    init(data:Drivers){
        self.data = data
    }
    
    public var getDriversPosition: String {
        return data.driversPosition
    }
    
    public var getDriversPhoto: UIImage {
        return data.driversPhoto
    }
    
    public var getDriversName: String {
        return data.driversName
    }
    
    public var getDriversLastName: String {
        return data.driversLastName
    }
    
    public var getTeam: String {
        return data.teamsName
    }
    
    public var getPoints: String {
        return data.currentDriverPoints
    }
}
