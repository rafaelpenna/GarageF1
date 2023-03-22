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
    
    var racesTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Corridas"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var racesAnswer: UILabel = {
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
        backgroundColor()
    }
    
    private func backgroundColor() {
        backgroundColor = .none
    }
    
    private func addSubViews(){
        addSubview(racesTitle)
        addSubview(racesAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            racesTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            racesTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            racesAnswer.topAnchor.constraint(equalTo: racesTitle.bottomAnchor, constant: 10),
            racesAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

