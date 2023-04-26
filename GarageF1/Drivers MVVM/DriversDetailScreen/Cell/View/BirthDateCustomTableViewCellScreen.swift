//
//  DriversDetailCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class BirthDateCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = "BirthDateCustomTableViewCellScreen"
    
    var birthDateTitleLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Data de Nascimento"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birthDateAnswerLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 22)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    public func configure() {
        backgroundColor()
        addElements()
        configConstraintsInfoDriver()
    }
    
    private func backgroundColor() {
        backgroundColor = .none
    }
    
    private func addElements(){
        addSubview(birthDateTitleLabel)
        addSubview(birthDateAnswerLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthDateTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            birthDateTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            birthDateAnswerLabel.topAnchor.constraint(equalTo: birthDateTitleLabel.bottomAnchor, constant: 10),
            birthDateAnswerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}
