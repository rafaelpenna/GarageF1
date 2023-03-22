//
//  DuelRacesParticipatedCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelRacesParticipatedCustomTableViewCell: UITableViewCell {

    static let identifier = "DuelRacesParticipatedCustomTableViewCell"
    
    var racesTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Corridas"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var racesAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var racesAnswerRight: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    lazy var divisionLabels: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
    }
    
    private func addSubViews(){
        addSubview(racesTitle)
        addSubview(racesAnswerLeft)
        addSubview(racesAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            racesTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            racesTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            racesAnswerLeft.topAnchor.constraint(equalTo: racesTitle.bottomAnchor, constant: 10),
            racesAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -30),
            
            racesAnswerRight.topAnchor.constraint(equalTo: racesTitle.bottomAnchor, constant: 10),
            racesAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 30),
            
            divisionLabels.topAnchor.constraint(equalTo: racesTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.heightAnchor.constraint(equalTo: racesAnswerLeft.heightAnchor),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
        ])
    }
}
