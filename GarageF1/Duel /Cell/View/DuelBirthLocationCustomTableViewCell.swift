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
        variable.font = UIFont.systemFont(ofSize: 18)
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
    
    var countrynAnswerLeft: UILabel = {
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
    
    var countrynAnswerRight: UILabel = {
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
    
    lazy var dataBackgroundLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        return label
    }()
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
        backgroundColor()
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
    }
    
    private func addSubViews(){
        addSubview(dataBackgroundLabel)
        addSubview(birthLocationTitle)
        addSubview(birthLocationAnswerLeft)
        addSubview(birthLocationAnswerRight)
        addSubview(countrynAnswerLeft)
        addSubview(countrynAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthLocationTitle.topAnchor.constraint(equalTo: topAnchor),
            birthLocationTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            birthLocationAnswerLeft.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            birthLocationAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            
            birthLocationAnswerRight.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            birthLocationAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            
            countrynAnswerLeft.topAnchor.constraint(equalTo: birthLocationAnswerLeft.bottomAnchor, constant: 4),
            countrynAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            
            countrynAnswerRight.topAnchor.constraint(equalTo: birthLocationAnswerRight.bottomAnchor, constant: 4),
            countrynAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            
            divisionLabels.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.bottomAnchor.constraint(equalTo: countrynAnswerLeft.bottomAnchor),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
            
            dataBackgroundLabel.topAnchor.constraint(equalTo: topAnchor),
            dataBackgroundLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dataBackgroundLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            dataBackgroundLabel.bottomAnchor.constraint(equalTo: divisionLabels.bottomAnchor, constant: 5),
        ])
    }
}
