//
//  TableViewBirthDateCellScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

class TableViewBirthDateCellScreen: UITableViewCell {
    
    static let identifier: String = "TableViewDriversDetailCustomTCell"

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
        variable.text = ""
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
            birthDateTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            birthDateAnswer.topAnchor.constraint(equalTo: birthDateTitle.bottomAnchor, constant: 10),
            birthDateAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }

}
