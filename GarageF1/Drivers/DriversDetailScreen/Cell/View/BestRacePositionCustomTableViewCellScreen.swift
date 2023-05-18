//
//  BestRacePositionCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class BestRacePositionCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = String(describing: BestRacePositionCustomTableViewCellScreen.self)
    
    var bestRacePositionTitleLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Melhor colocação em corridas"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var bestRacePositionAnswerLabel: UILabel = {
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
        addSubview(bestRacePositionTitleLabel)
        addSubview(bestRacePositionAnswerLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            bestRacePositionTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            bestRacePositionTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            bestRacePositionAnswerLabel.topAnchor.constraint(equalTo: bestRacePositionTitleLabel.bottomAnchor, constant: 10),
            bestRacePositionAnswerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

