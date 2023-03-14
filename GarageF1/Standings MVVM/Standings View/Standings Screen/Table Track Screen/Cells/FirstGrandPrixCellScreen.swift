//
//  FirstGrandPrixCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class FirstGrandPrixCellScreen: UITableViewCell {

    static let identifier = "FirstGrandPrixCellScreen"
    
    lazy var firstGrandPrixTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Número de Voltas"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var firstGrandPrixAnswer: UILabel = {
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
        addSubview(firstGrandPrixTitle)
        addSubview(firstGrandPrixAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            firstGrandPrixTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            firstGrandPrixTitle.topAnchor.constraint(equalTo: topAnchor, constant: 5),

            firstGrandPrixAnswer.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -45),
            firstGrandPrixAnswer.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
        ])
    }

}
