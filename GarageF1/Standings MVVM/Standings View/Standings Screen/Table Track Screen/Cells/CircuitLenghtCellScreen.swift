//
//  CircuitLenghtCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class CircuitLenghtCellScreen: UIView {

    static let identifier = "CircuitLenghtCellScreen"
    
    lazy var trackLenghtTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Comprimento do Circuito"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var trackLenghtAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        return label
    }()
    
    lazy var trackLenghtUnit: UILabel = {
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
        addSubview(trackLenghtTitle)
        addSubview(trackLenghtAnswer)
        addSubview(trackLenghtUnit)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            trackLenghtTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            trackLenghtTitle.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            
            trackLenghtAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
            trackLenghtAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4),
            
            trackLenghtUnit.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            trackLenghtUnit.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2),
        ])
    }

}
