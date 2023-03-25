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
        self.dataRacesScreen.append(RacesModel(roundLabel: "22", countryLabel: "United States", descriptionLabel: "FORMULA 1 HEINEKEN SILVER LAS VEGAS GRAND PRIX 2023", dayLabel: "16-18", monthLabel: "NOV"))
        self.dataRacesScreen.append(RacesModel(roundLabel: "21", countryLabel: "Brazil", descriptionLabel: "FORMULA 1 ROLEX GRANDE PRÊMIO DE SÃO PAULO 2023", dayLabel: "03-05", monthLabel: "NOV"))
        self.dataRacesScreen.append(RacesModel(roundLabel: "20", countryLabel: "Mexico", descriptionLabel: "FORMULA 1 GRAN PREMIO DE LA CIUDAD DE MÉXICO 2023", dayLabel: "27-29", monthLabel: "OUT"))
        self.dataRacesScreen.append(RacesModel(roundLabel: "19", countryLabel: "United States", descriptionLabel: "FORMULA 1 LENOVO UNITED STATES GRAND PRIX 2023", dayLabel: "20-22", monthLabel: "OUT"))
        self.dataRacesScreen.append(RacesModel(roundLabel: "18", countryLabel: "Qatar", descriptionLabel: "FORMULA 1 QATAR AIRWAYS QATAR GRAND PRIX 2023", dayLabel: "06-08", monthLabel: "OUT"))
        self.dataRacesScreen.append(RacesModel(roundLabel: "17", countryLabel: "Japan", descriptionLabel: "FORMULA 1 LENOVO JAPANESE GRAND PRIX 2023", dayLabel: "22-24", monthLabel: "SEP"))
        self.dataRacesScreen.append(RacesModel(roundLabel: "16", countryLabel: "Singapore", descriptionLabel: "FORMULA 1 SINGAPORE AIRLINES SINGAPORE GRAND PRIX 2023", dayLabel: "15-17", monthLabel: "SEP"))
        self.dataRacesScreen.append(RacesModel(roundLabel: "15", countryLabel: "Italy", descriptionLabel: "FORMULA 1 PIRELLI GRAN PREMIO D’ITALIA 2023", dayLabel: "01-03", monthLabel: "SEP"))
        self.dataRacesScreen.append(RacesModel(roundLabel: "14", countryLabel: "Netherlands", descriptionLabel: "FORMULA 1 HEINEKEN DUTCH GRAND PRIX 2023", dayLabel: "25-27", monthLabel: "AUG"))
        self.dataRacesScreen.append(RacesModel(roundLabel: "13", countryLabel: "Belgium", descriptionLabel: "FORMULA 1 BELGIAN GRAND PRIX 2023", dayLabel: "28-30", monthLabel: "JUL"))
    }
    
    public var numberOfRows:Int{
        return self.dataRacesScreen.count
    }
    
    public func loadCurrentRace(indexPath: IndexPath) -> RacesModel {
        return dataRacesScreen[indexPath.row]
    }
    
    public func getRaceRound(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].roundLabel
    }
    
    public func getRaceCountry(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].countryLabel
    }
    
    public func getRaceDescription(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].descriptionLabel
    }
    
    public func getRaceDay(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].dayLabel
    }
    
    public func getRaceMonth(indexPath: IndexPath) -> String {
        return dataRacesScreen[indexPath.row].monthLabel
    }
}
