//
//  RaceDistanceCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class RaceDistanceCellScreen: UITableViewCell {

    static let identifier = String(describing: RaceDistanceCellScreen.self)
    
    lazy var backgroundCellWhiteView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var raceDistanceTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Distância da Corrida"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    lazy var raceDistanceAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    lazy var raceDistanceUnit: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "(km)"
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    
    public func configure() {
        addElements()
        setBackgroundColor()
        configConstraintsInfoDriver()
    }
    
    private func addElements(){
        addSubview(backgroundCellWhiteView)
        addSubview(raceDistanceTitle)
        addSubview(raceDistanceAnswer)
        addSubview(raceDistanceUnit)
    }
    
    private func setBackgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            backgroundCellWhiteView.topAnchor.constraint(equalTo: topAnchor),
            backgroundCellWhiteView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundCellWhiteView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundCellWhiteView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            raceDistanceTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            raceDistanceTitle.topAnchor.constraint(equalTo: topAnchor, constant: 7),

            raceDistanceAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            raceDistanceAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),

            raceDistanceUnit.leadingAnchor.constraint(equalTo: raceDistanceTitle.trailingAnchor, constant: 7),
            raceDistanceUnit.bottomAnchor.constraint(equalTo: raceDistanceTitle.bottomAnchor),
        ])
    }

}
