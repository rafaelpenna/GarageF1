//
//  BirthLocationCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class BirthLocationCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = "BirthLocationCustomTableViewCellScreen"
    
    var birthLocationTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Local de Nascimento"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birbirthLocationAnswer: UILabel = {
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
        addSubview(birthLocationTitle)
        addSubview(birbirthLocationAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthLocationTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            birthLocationTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            birbirthLocationAnswer.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            birbirthLocationAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

