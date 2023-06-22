//
//  YearsScreenViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/05/23.
//

import UIKit

class YearsScreenViewModel {
    
    private var data: Season2
    
    init(data:Season2){
        self.data = data
    }
    
    public var getYearSeason: String {
        return data.season
    }
}
