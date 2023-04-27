//
//  SecondDriverViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/04/23.
//

import Foundation

class SecondDriverViewModel {
    
    let secondDriverScreen: SecondDriverScreen = SecondDriverScreen()
    var birthDate = "16/10/1997 (24 anos)"
    var birthLocation = "Monte Carlo, Monaco"
    var championshipsWon = "0"
    var racesParticipated = "92"
    var podiumsEarned = "18"
    var pointsEarned = "730"
    var bestPositionRaces = "1(x5)"
    var bestGridPosition = "1"
    
    
    public func getBirthDate() -> String {
        return birthDate
    }
    
    public func getBirthLocation() -> String {
        return birthLocation
    }
    
    public func getChampionshipsWon() -> String {
        return championshipsWon
    }
    
    public func getRacesParticipated() -> String {
        return racesParticipated
    }
    
    public func getPodiumsEarned() -> String {
        return podiumsEarned
    }
    
    public func getPointsEarned() -> String {
        return pointsEarned
    }
    
    public func getBestPositionRaces() -> String {
        return bestPositionRaces
    }
    
    public func getBestGridPosition() -> String {
        return bestGridPosition
    }
    
}
