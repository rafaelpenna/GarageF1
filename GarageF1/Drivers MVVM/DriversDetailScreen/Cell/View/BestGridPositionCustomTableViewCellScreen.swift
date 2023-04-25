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
    
    var bestGridPositionTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Melhor colocação no grid"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var bestGridPositionAnswer: UILabel = {
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
        addSubview(bestGridPositionTitle)
        addSubview(bestGridPositionAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            bestGridPositionTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            bestGridPositionTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            bestGridPositionAnswer.topAnchor.constraint(equalTo: bestGridPositionTitle.bottomAnchor, constant: 10),
            bestGridPositionAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

