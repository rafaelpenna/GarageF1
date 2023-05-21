//
//  TableViewBestGridPositionCustomCellScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

class TableViewBestGridPositionCustomCellScreen: UITableViewCell {

    static let identifier = String(describing: TableViewBestGridPositionCustomCellScreen.self)
    
    var bestGridPositionTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Melhor colocação no grid"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var bestGridPositionAnswer: UILabel = {
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
        addSubview(bestGridPositionTitle)
        addSubview(bestGridPositionAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            bestGridPositionTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            bestGridPositionTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            bestGridPositionAnswer.topAnchor.constraint(equalTo: bestGridPositionTitle.bottomAnchor, constant: 10),
            bestGridPositionAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
