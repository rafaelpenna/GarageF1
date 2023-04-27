//
//  FullResultsViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/04/23.
//

import Foundation

class FullResultsViewModel {
    
    private var dataHomeResults: [HomeResults] = []
    
    init(){
        self.configArrayDataHomeResults()
    }
    
    private func configArrayDataHomeResults() {
        dataHomeResults.append(HomeResults(indice: "1", imageTeams: "astonmartinlogo", namePilot: "Aston Martin", score: "86 pts"))
        dataHomeResults.append(HomeResults(indice: "1", imageTeams: "astonmartinlogo", namePilot: "Aston Martin", score: "86 pts"))
        dataHomeResults.append(HomeResults(indice: "2", imageTeams: "mercedeslogo", namePilot: "Mercedes", score: "59 pts"))
        dataHomeResults.append(HomeResults(indice: "3", imageTeams: "ferrarilogo", namePilot: "Ferrari", score: "54 pts"))
    }
    
    public func getDataHomeResults(index: Int) -> HomeResults {
        return dataHomeResults[index]
    }
    
    public var numberOfRows:Int{
        return dataHomeResults.count
    }
    
}
