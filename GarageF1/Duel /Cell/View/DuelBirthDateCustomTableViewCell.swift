//
//  DuelBirthDateCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelBirthDateCustomTableViewCell: UITableViewCell {

    static let identifier = String(describing: DuelBirthDateCustomTableViewCell.self)
    
    var birthDateTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Data de Nascimento"
        variable.font = UIFont.systemFont(ofSize: 18)
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
        addSubview(birthDateTitle)
        addSubview(birthDateAnswerLeft)
        addSubview(birthDateAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthDateTitle.topAnchor.constraint(equalTo: topAnchor),
            birthDateTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            birthDateAnswerLeft.topAnchor.constraint(equalTo: birthDateTitle.bottomAnchor, constant: 10),
            birthDateAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            
            birthDateAnswerRight.topAnchor.constraint(equalTo: birthDateTitle.bottomAnchor, constant: 10),
            birthDateAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            
            divisionLabels.topAnchor.constraint(equalTo: birthDateTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.heightAnchor.constraint(equalTo: birthDateAnswerLeft.heightAnchor),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
            
            dataBackgroundLabel.topAnchor.constraint(equalTo: topAnchor),
            dataBackgroundLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dataBackgroundLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            dataBackgroundLabel.bottomAnchor.constraint(equalTo: divisionLabels.bottomAnchor, constant: 5),
        ])
    }
}
