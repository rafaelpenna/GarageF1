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
    
    var birthDateTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Data de Nascimento"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var birthDateAnswer: UILabel = {
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
        addSubview(birthDateTitle)
        addSubview(birthDateAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthDateTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            birthDateTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            birthDateAnswer.topAnchor.constraint(equalTo: birthDateTitle.bottomAnchor, constant: 10),
            birthDateAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}
