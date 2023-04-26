//
//  BestGridPositionCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class BestGridPositionCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = "BestGridPositionCustomTableViewCellScreen"
    
    var bestGridPositionTitleLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Melhor colocação no grid"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var bestGridPositionAnswerLabel: UILabel = {
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
        addSubview(bestGridPositionTitleLabel)
        addSubview(bestGridPositionAnswerLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            bestGridPositionTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            bestGridPositionTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            bestGridPositionAnswerLabel.topAnchor.constraint(equalTo: bestGridPositionTitleLabel.bottomAnchor, constant: 10),
            bestGridPositionAnswerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

