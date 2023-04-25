//
//  RacesViewModel.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import UIKit

class RacesViewModel {
    
    private var dataRacesScreen:[RacesModel] = []
    
    init(){
        self.configArrayRacesScreen()
    }
    
    private func configArrayRacesScreen(){
        self.dataRacesScreen.append(RacesModel(round: "22", country: "United States", description: "FORMULA 1 HEINEKEN SILVER LAS VEGAS GRAND PRIX 2023", day: "16-18", month: "NOV"))
        self.dataRacesScreen.append(RacesModel(round: "21", country: "Brazil", description: "FORMULA 1 ROLEX GRANDE PRÊMIO DE SÃO PAULO 2023", day: "03-05", month: "NOV"))
        self.dataRacesScreen.append(RacesModel(round: "20", country: "Mexico", description: "FORMULA 1 GRAN PREMIO DE LA CIUDAD DE MÉXICO 2023", day: "27-29", month: "OUT"))
        self.dataRacesScreen.append(RacesModel(round: "19", country: "United States", description: "FORMULA 1 LENOVO UNITED STATES GRAND PRIX 2023", day: "20-22", month: "OUT"))
        self.dataRacesScreen.append(RacesModel(round: "18", country: "Qatar", description: "FORMULA 1 QATAR AIRWAYS QATAR GRAND PRIX 2023", day: "06-08", month: "OUT"))
        self.dataRacesScreen.append(RacesModel(round: "17", country: "Japan", description: "FORMULA 1 LENOVO JAPANESE GRAND PRIX 2023", day: "22-24", month: "SEP"))
        self.dataRacesScreen.append(RacesModel(round: "16", country: "Singapore", description: "FORMULA 1 SINGAPORE AIRLINES SINGAPORE GRAND PRIX 2023", day: "15-17", month: "SEP"))
        self.dataRacesScreen.append(RacesModel(round: "15", country: "Italy", description: "FORMULA 1 PIRELLI GRAN PREMIO D’ITALIA 2023", day: "01-03", month: "SEP"))
        self.dataRacesScreen.append(RacesModel(round: "14", country: "Netherlands", description: "FORMULA 1 HEINEKEN DUTCH GRAND PRIX 2023", day: "25-27", month: "AUG"))
        self.dataRacesScreen.append(RacesModel(round: "13", country: "Belgium", description: "FORMULA 1 BELGIAN GRAND PRIX 2023", day: "28-30", month: "JUL"))
    }
    
    public var numberOfRows:Int{
        return self.dataRacesScreen.count
    }
    
    public func loadCurrentRace(indexPath: IndexPath) -> RacesModel {
        return dataRacesScreen[indexPath.row]
    }
    
    public func getRaceRound(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].round
    }
    
    public func getRaceCountry(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].country
    }
    
    public func getRaceDescription(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].description
    }
    
    public func getRaceDay(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].day
    }
    
    public func getRaceMonth(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].month
    }
}
