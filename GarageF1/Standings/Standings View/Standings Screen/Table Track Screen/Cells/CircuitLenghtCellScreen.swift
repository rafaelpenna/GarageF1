//
//  CircuitLenghtCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class CircuitLenghtCellScreen: UITableViewCell {

    static let identifier = String(describing: CircuitLenghtCellScreen.self)
    
    lazy var backgroundCellWhiteView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.clipsToBounds = true
        view.layer.borderWidth = 0.5
        view.layer.borderColor = UIColor.darkGray.cgColor
        return view
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
        addElements()
        setBackgroundColor()
        configConstraintsInfoDriver()
    }
    
    private func addElements(){
        addSubview(backgroundCellWhiteView)
        addSubview(trackLenghtTitle)
        addSubview(trackLenghtAnswer)
        addSubview(trackLenghtUnit)
    }
    
    private func setBackgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            backgroundCellWhiteView.topAnchor.constraint(equalTo: topAnchor),
            backgroundCellWhiteView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundCellWhiteView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            backgroundCellWhiteView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            trackLenghtTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
            trackLenghtTitle.topAnchor.constraint(equalTo: topAnchor, constant: 7),
            
            trackLenghtAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            trackLenghtAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            
            trackLenghtUnit.leadingAnchor.constraint(equalTo: trackLenghtTitle.trailingAnchor, constant: 7),
            trackLenghtUnit.bottomAnchor.constraint(equalTo: trackLenghtTitle.bottomAnchor),
        ])
    }
}
