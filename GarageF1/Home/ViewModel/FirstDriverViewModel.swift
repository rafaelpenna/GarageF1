//
//  FirstDriverViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 26/04/23.
//

import Foundation

class FirstDriverViewModel {
    
    private var birthDate = "30/09/1997 (25 anos)"
    private var birthLocation = "Hasselt, Belgica"
    private var championshipsWon = "2"
    private var racesParticipated = "163"
    private var podiumsEarned = "77"
    private var pointsEarned = "2011"
    private var bestPositionRaces = "1(x35)"
    private var bestGridPosition = "1"
    

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
