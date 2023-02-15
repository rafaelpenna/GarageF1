//
//  BestRacePositionCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class BestRacePositionCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = "BestRacePositionCustomTableViewCellScreen"
    
    var bestRacePositionTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Melhor colocação em corridas"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var bestRacePositionAnswer: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
    }
    
    private func addSubViews(){
        addSubview(bestRacePositionTitle)
        addSubview(bestRacePositionAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            bestRacePositionTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            bestRacePositionTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            bestRacePositionAnswer.topAnchor.constraint(equalTo: bestRacePositionTitle.bottomAnchor, constant: 10),
            bestRacePositionAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}

