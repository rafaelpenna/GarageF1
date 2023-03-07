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
    
    var podiumsAnswer: UILabel = {
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
    }
    
    private func addSubViews(){
        addSubview(podiumsTitle)
        addSubview(podiumsAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            podiumsTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            podiumsTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            podiumsAnswer.topAnchor.constraint(equalTo: podiumsTitle.bottomAnchor, constant: 10),
            podiumsAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
