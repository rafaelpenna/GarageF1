//
//  DuelWinsCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelWinsCustomTableViewCell: UITableViewCell {

    static let identifier = "DuelWinsCustomTableViewCell"
    
    var winsTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Melhor colocação em corridas"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var winsAnswer: UILabel = {
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
        addSubview(winsTitle)
        addSubview(winsAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            winsTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            winsTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            winsAnswer.topAnchor.constraint(equalTo: winsTitle.bottomAnchor, constant: 10),
            winsAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }

}
