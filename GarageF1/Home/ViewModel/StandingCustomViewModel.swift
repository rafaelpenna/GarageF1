//
//  StandingCustomViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/04/23.
//

import Foundation

class StandingCustomViewModel {
  
    
    private var dataHomeRacer: [HomeRacer] = []
    
    init(){
        self.configArrayDataHomeRacer()
    }
    
    private func configArrayDataHomeRacer() {
        dataHomeRacer.append(HomeRacer(indice: "1", nameTeams: "Red Bull Racing", name: "max", nameImage: "Max \nVerstappen"))
        dataHomeRacer.append(HomeRacer(indice: "2", nameTeams: "Ferrari         ", name: "charles", nameImage: "Charles \nLeclerc"))
    }
    
    public func getDataHomeRacer(index: Int) -> HomeRacer {
        return dataHomeRacer[index]
    }
    
    public var numberOfRows:Int{
        return dataHomeRacer.count
    }
    
}
