//
//  PointsCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class PointsCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = String(describing: PointsCustomTableViewCellScreen.self)
    
    var pointsTitleLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Pontos"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var pointsAnswerLabel: UILabel = {
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
        addSubview(pointsTitleLabel)
        addSubview(pointsAnswerLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            pointsTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            pointsTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            pointsAnswerLabel.topAnchor.constraint(equalTo: pointsTitleLabel.bottomAnchor, constant: 10),
            pointsAnswerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

