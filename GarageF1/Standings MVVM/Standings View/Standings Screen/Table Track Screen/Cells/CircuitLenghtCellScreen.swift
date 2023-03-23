//
//  CircuitLenghtCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class CircuitLenghtCellScreen: UITableViewCell {

    static let identifier = "CircuitLenghtCellScreen"
    
    lazy var backgroundCellWhite: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var trackLenghtTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Comprimento do Circuito"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    lazy var trackLenghtAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    lazy var trackLenghtUnit: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "(km)"
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.textColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        return label
    }()
    
    
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    private func addSubViews(){
        addSubview(backgroundCellWhite)
        addSubview(trackLenghtTitle)
        addSubview(trackLenghtAnswer)
        addSubview(trackLenghtUnit)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            backgroundCellWhite.topAnchor.constraint(equalTo: topAnchor),
            backgroundCellWhite.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundCellWhite.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundCellWhite.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            trackLenghtTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            trackLenghtTitle.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            
            trackLenghtAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            trackLenghtAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            
            trackLenghtUnit.leadingAnchor.constraint(equalTo: trackLenghtTitle.trailingAnchor, constant: 7),
            trackLenghtUnit.bottomAnchor.constraint(equalTo: trackLenghtTitle.bottomAnchor),
        ])
    }

}
