//
//  SecondFullConstructorsViewModel.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 23/06/23.
//

import Foundation
import UIKit

class SecondFullConstructorsViewModel {
    
    private var data: ConstructorStandingFullConstructorsModel
    
    init(data:ConstructorStandingFullConstructorsModel){
        self.data = data
    }
    
    public var getConstructorsPosition: String {
        return data.positionText
    }
    
    public var getDriversPhoto: UIImage {
        if data.constructor.constructorID == "red_bull" {
            return UIImage(named: "redbulllogo") ?? UIImage()
        } else if data.constructor.constructorID == "mercedes" {
            return UIImage(named: "mercedeslogo") ?? UIImage()
        } else if data.constructor.constructorID == "aston_martin" {
            return UIImage(named: "astonmartinlogo") ?? UIImage()
        } else if data.constructor.constructorID == "ferrari" {
            return UIImage(named: "ferrarilogo") ?? UIImage()
        } else if data.constructor.constructorID == "alpine" {
            return UIImage(named: "alpinelogo") ?? UIImage()
        } else if data.constructor.constructorID == "mclaren" {
            return UIImage(named: "mclarenlogo") ?? UIImage()
        } else if data.constructor.constructorID == "alfa" {
            return UIImage(named: "alfaromeologo") ?? UIImage()
        } else if data.constructor.constructorID == "haas" {
            return UIImage(named: "haaslogo") ?? UIImage()
        } else if data.constructor.constructorID == "williams" {
            return UIImage(named: "williamslogo") ?? UIImage()
        } else if data.constructor.constructorID == "alphatauri" {
            return UIImage(named: "alphataurilogo") ?? UIImage()
        } 
        return UIImage()
    }
    
    public var getConstructorsName: String {
        return data.constructor.name
    }
    
    public var getConstructorsPoints: String {
        return data.points + " pts"
    }
}
