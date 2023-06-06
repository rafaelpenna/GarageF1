//
//  TeamsScreenViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/03/23.
//

import UIKit

class TeamsScreenViewModel {
    
    private var data: ConstructorStanding1
    
    init(data:ConstructorStanding1){
        self.data = data
    }
    
    public var getTeamsPosition: String {
        return data.position
    }
    
    public var getTeamsName: String {
        return data.constructor.name
    }
    
    public var getSeasonTeamsPoints: String {
        return data.points
    }
}
