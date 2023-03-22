//
//  DuelPointsEarnedCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelPointsEarnedCustomTableViewCell: UITableViewCell {

    static let identifier = "DuelPointsEarnedCustomTableViewCell"
    
    var pointsTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Pontos"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var pointsAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var pointsAnswerRight: UILabel = {
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
        addSubview(pointsTitle)
        addSubview(pointsAnswerLeft)
        addSubview(pointsAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            pointsTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            pointsTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            pointsAnswerLeft.topAnchor.constraint(equalTo: pointsTitle.bottomAnchor, constant: 10),
            pointsAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -30),
            
            pointsAnswerRight.topAnchor.constraint(equalTo: pointsTitle.bottomAnchor, constant: 10),
            pointsAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 30),
            
            divisionLabels.topAnchor.constraint(equalTo: pointsTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.heightAnchor.constraint(equalTo: pointsAnswerLeft.heightAnchor),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
        ])
    }
}
