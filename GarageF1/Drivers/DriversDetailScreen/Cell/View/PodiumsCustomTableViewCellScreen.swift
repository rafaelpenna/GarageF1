//
//  PodiumsCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class PodiumsCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = String(describing: PodiumsCustomTableViewCellScreen.self)
    
    var podiumsTitleLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Pódios"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var podiumsAnswerLabel: UILabel = {
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
        addSubview(podiumsTitleLabel)
        addSubview(podiumsAnswerLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            podiumsTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            podiumsTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            podiumsAnswerLabel.topAnchor.constraint(equalTo: podiumsTitleLabel.bottomAnchor, constant: 10),
            podiumsAnswerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

