//
//  ableViewRacesCustomTCellScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

class TableViewRacesCustomTCellScreen: UITableViewCell {

    static let identifier = String(describing: TableViewRacesCustomTCellScreen.self)
    
    var racesTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Corridas"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var racesAnswer: UILabel = {
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
        addSubview(racesTitle)
        addSubview(racesAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            racesTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            racesTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            racesAnswer.topAnchor.constraint(equalTo: racesTitle.bottomAnchor, constant: 10),
            racesAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
