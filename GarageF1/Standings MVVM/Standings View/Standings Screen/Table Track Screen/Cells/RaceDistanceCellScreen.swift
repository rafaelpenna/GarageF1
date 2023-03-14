//
//  RaceDistanceCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class RaceDistanceCellScreen: UITableViewCell {

    static let identifier = "RaceDistanceCellScreen"
    
    lazy var raceDistanceTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Distância da Corrida"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var raceDistanceAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        return label
    }()
    
    lazy var raceDistanceUnit: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "KM"
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.textColor = .gray
        return label
    }()
    
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
        backgroundColor = .white
    }
    
    private func addSubViews(){
        addSubview(raceDistanceTitle)
        addSubview(raceDistanceAnswer)
        addSubview(raceDistanceUnit)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            raceDistanceTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            raceDistanceTitle.topAnchor.constraint(equalTo: topAnchor, constant: 5),

            raceDistanceAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
            raceDistanceAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),

            raceDistanceUnit.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            raceDistanceUnit.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
        ])
    }

}
