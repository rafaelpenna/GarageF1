//
//  ConstructorsFullViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/04/23.
//

import Foundation

class ConstructorsFullViewModel {
    
    private var dataConstructors: [DataHomeConstructors] = []
    
    init() {
        self.configArrayDataConstructors()
    }
    
    private func configArrayDataConstructors() {
        
        dataConstructors.append(DataHomeConstructors(position: "1", imageTeams: "redbulllogo", nameTeams: "Red Bull", points: "87 pts"))
        dataConstructors.append(DataHomeConstructors(position: "2", imageTeams: "astonmartinlogo", nameTeams: "Aston Martin", points: "38 pts"))
        dataConstructors.append(DataHomeConstructors(position: "3", imageTeams: "mercedeslogo", nameTeams: "Mercedes", points: "38 pts"))
        dataConstructors.append(DataHomeConstructors(position: "4", imageTeams: "ferrarilogo", nameTeams: "Ferrarri", points: "26 pts"))
        dataConstructors.append(DataHomeConstructors(position: "5", imageTeams: "alpinelogo", nameTeams: "Alpine", points: "8 pts"))
        dataConstructors.append(DataHomeConstructors(position: "6", imageTeams: "alfaromeologo", nameTeams: "Alfa Romeo", points: "4 pts"))
        dataConstructors.append(DataHomeConstructors(position: "7", imageTeams: "haaslogo", nameTeams: "Haas", points: "1 pts"))
        dataConstructors.append(DataHomeConstructors(position: "8", imageTeams: "williamslogo", nameTeams: "Williams", points: "1 pts"))
        dataConstructors.append(DataHomeConstructors(position: "9", imageTeams: "alphataurilogo", nameTeams: "AlphaTauri", points: "0  pts"))
        dataConstructors.append(DataHomeConstructors(position: "10", imageTeams: "mclarenlogo", nameTeams: "McLaren", points: "0 pts"))
    }
    
    
    public func getDataConstructors(index: Int) -> DataHomeConstructors {
        return dataConstructors[index]
    }
    
    public var numberOfRows:Int{
        return dataConstructors.count
    }
}
