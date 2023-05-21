//
//  TableViewBirthLocationCellScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

class TableViewBirthLocationCellScreen: UITableViewCell {

    static let identifier = String(describing: TableViewBirthLocationCellScreen.self)
    
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
        addSubViews()
        configConstraintsInfoDriver()
    }
    
    private func addSubViews(){
        addSubview(birthLocationTitle)
        addSubview(birbirthLocationAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            birthLocationTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            birthLocationTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            birbirthLocationAnswer.topAnchor.constraint(equalTo: birthLocationTitle.bottomAnchor, constant: 10),
            birbirthLocationAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
