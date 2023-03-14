//
//  RaceLapsCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class RaceLapsCellScreen: UITableViewCell {

    static let identifier = "RaceLapsCellScreen"
    
    lazy var trackLapsTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Número de Voltas"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var trackLapsAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        return label
    }()
    
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
        backgroundColor = .white
    }
    
    private func addSubViews(){
        addSubview(trackLapsTitle)
        addSubview(trackLapsAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            trackLapsTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            trackLapsTitle.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            
            trackLapsAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
            trackLapsAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
        ])
    }

}
