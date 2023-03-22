//
//  DuelBirthLocationCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelBirthLocationCustomTableViewCell: UITableViewCell {

    static let identifier = "DuelBirthLocationCustomTableViewCell"
    
    var birthLocationTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Local de Nascimento"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birthLocationAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birthLocationAnswerRight: UILabel = {
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
        addSubview(birthLocationTitle)
        addSubview(birthLocationAnswerLeft)
        addSubview(birthLocationAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthLocationTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            birthLocationTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            birthLocationAnswerLeft.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            birthLocationAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -30),
            
            birthLocationAnswerRight.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            birthLocationAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 30),
            
            divisionLabels.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.heightAnchor.constraint(equalTo: birthLocationAnswerLeft.heightAnchor),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
        ])
    }
}
