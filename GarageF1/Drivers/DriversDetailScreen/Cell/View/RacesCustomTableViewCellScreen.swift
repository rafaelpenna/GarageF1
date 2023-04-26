//
//  RacesCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class RacesCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = "RacesCustomTableViewCellScreen"
    
    var racesTitleLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Corridas"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var racesAnswerLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    public func configure() {
        backgroundColor()
        addElements()
        configConstraintsInfoDriver()
    }
    
    private func backgroundColor() {
        backgroundColor = .none
    }
    
    private func addElements(){
        addSubview(racesTitleLabel)
        addSubview(racesAnswerLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            racesTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            racesTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            racesAnswerLabel.topAnchor.constraint(equalTo: racesTitleLabel.bottomAnchor, constant: 10),
            racesAnswerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

