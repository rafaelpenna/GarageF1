//
//  BirthLocationCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class BirthLocationCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = String(describing: BirthLocationCustomTableViewCellScreen.self)
    
    var birthLocationTitleLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Local de Nascimento"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birthLocationAnswerLabel: UILabel = {
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
        addSubview(birthLocationTitleLabel)
        addSubview(birthLocationAnswerLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthLocationTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            birthLocationTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            birthLocationAnswerLabel.topAnchor.constraint(equalTo: birthLocationTitleLabel.bottomAnchor, constant: 10),
            birthLocationAnswerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

