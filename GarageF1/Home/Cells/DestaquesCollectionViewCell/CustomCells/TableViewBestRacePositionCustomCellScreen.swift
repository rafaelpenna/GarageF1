//
//  TableViewBestRacePositionCustomCellScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

class TableViewBestRacePositionCustomCellScreen: UITableViewCell {

    static let identifier = String(describing: TableViewBestRacePositionCustomCellScreen.self)
    
    var bestRacePositionTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Melhor colocação em corridas"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var bestRacePositionAnswer: UILabel = {
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
        addSubview(bestRacePositionTitle)
        addSubview(bestRacePositionAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            bestRacePositionTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            bestRacePositionTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            bestRacePositionAnswer.topAnchor.constraint(equalTo: bestRacePositionTitle.bottomAnchor, constant: 10),
            bestRacePositionAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
