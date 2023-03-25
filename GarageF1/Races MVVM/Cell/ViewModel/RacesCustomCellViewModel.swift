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
        return data.roundLabel
    }
    
    public var getRaceCountry: String {
        return data.countryLabel
    }
    
    public var getRaceDescription: String {
        return data.descriptionLabel
    }
    
    public var getRaceDay: String {
        return data.dayLabel
    }
    
    public var getRaceMonth: String {
        return data.monthLabel
    }
}
