//
//  DuelBirthDateCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelBirthDateCustomTableViewCell: UITableViewCell {

    static let identifier = "DuelBirthDateCustomTableViewCell"
    
    var birthDateTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Data de Nascimento"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birthDateAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birthDateAnswerRight: UILabel = {
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
        addSubview(birthDateTitle)
        addSubview(birthDateAnswerLeft)
        addSubview(birthDateAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthDateTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            birthDateTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            birthDateAnswerLeft.topAnchor.constraint(equalTo: birthDateTitle.bottomAnchor, constant: 10),
            birthDateAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -30),
            
            birthDateAnswerRight.topAnchor.constraint(equalTo: birthDateTitle.bottomAnchor, constant: 10),
            birthDateAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 30),
            
            divisionLabels.topAnchor.constraint(equalTo: birthDateTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.heightAnchor.constraint(equalTo: birthDateAnswerLeft.heightAnchor),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
        ])
    }
}
