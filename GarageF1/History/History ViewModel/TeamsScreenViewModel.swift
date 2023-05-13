//
//  TeamsScreenViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/03/23.
//

import UIKit

class TeamsScreenViewModel {
    
    private var data: HistoryTeamsModel
    
    init(data:HistoryTeamsModel){
        self.data = data
    }
    
    public var getTeamsPosition: String {
        return data.teamsPosition
    }
    
    public var getTeamsName: String {
        return data.teamsName
    }
    
    public var getSeasonTeamsPoints: String {
        return data.seasonTeamsPoints
    }
}
