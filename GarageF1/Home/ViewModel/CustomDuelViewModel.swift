//
//  CustomDuelViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/04/23.
//

import Foundation

class CustomDuelViewModel {
    
    private var dataHomeDuel: [HomeDuel] = []
    
    init() {
        self.configArrayDataHomeDuel()
    }
    
    private func configArrayDataHomeDuel() {
        dataHomeDuel.append(HomeDuel(namePilot: "Michael Schumacher ", imagePilot: "schumacher"))
        dataHomeDuel.append(HomeDuel(namePilot: "Max Verstappen", imagePilot: "max"))
    }
    
    public func getDataHomeDuel(index: Int) -> HomeDuel {
        return dataHomeDuel[index]
    }
    
    public var numberOfRows:Int{
        return dataHomeDuel.count
    }
    
}
