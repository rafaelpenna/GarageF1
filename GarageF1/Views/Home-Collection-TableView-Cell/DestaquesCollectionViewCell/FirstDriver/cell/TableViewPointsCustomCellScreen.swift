//
//  TableViewPointsCustomCellScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

class TableViewPointsCustomCellScreen: UITableViewCell {
    
    static let identifier = "TableViewPointsCustomCellScreen"
    
    var pointsTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Pontos"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var pointsAnswer: UILabel = {
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
        addSubview(pointsTitle)
        addSubview(pointsAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            pointsTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            pointsTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            pointsAnswer.topAnchor.constraint(equalTo: pointsTitle.bottomAnchor, constant: 10),
            pointsAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }

}
