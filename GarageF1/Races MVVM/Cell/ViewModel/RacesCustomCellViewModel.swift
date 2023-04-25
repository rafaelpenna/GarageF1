//
//  RacesCustomCellViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import UIKit

class RacesCustomCellViewModel {
    
    private var data: RacesModel
    
    init(data:RacesModel){
        self.data = data
    }
    
    public var getRaceRound: String {
        return data.round
    }
    
    public var getRaceCountry: String {
        return data.country
    }
    
    public var getRaceDescription: String {
        return data.description
    }
    
    public var getRaceDay: String {
        return data.day
    }
    
    public var getRaceMonth: String {
        return data.month
    }
}
