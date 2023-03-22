//
//  DuelPodiumsEarnedCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelPodiumsEarnedCustomTableViewCell: UITableViewCell {

    static let identifier = "DuelPodiumsEarnedCustomTableViewCell"
    
    var podiumsTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Pódios"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var podiumsAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var podiumsAnswerRight: UILabel = {
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
        addSubview(podiumsTitle)
        addSubview(podiumsAnswerLeft)
        addSubview(podiumsAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            podiumsTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            podiumsTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            podiumsAnswerLeft.topAnchor.constraint(equalTo: podiumsTitle.bottomAnchor, constant: 10),
            podiumsAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -30),
            
            podiumsAnswerRight.topAnchor.constraint(equalTo: podiumsTitle.bottomAnchor, constant: 10),
            podiumsAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 30),
            
            divisionLabels.topAnchor.constraint(equalTo: podiumsTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.heightAnchor.constraint(equalTo: podiumsAnswerLeft.heightAnchor),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
        ])
    }
}
