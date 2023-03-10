//
//  ChampionshipsWinCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class ChampionshipsWinCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = "ChampionshipsWinCustomTableViewCellScreen"
    
    var championshipsWinTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Campeonatos"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var championshipsWinAnswer: UILabel = {
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
        addSubview(championshipsWinTitle)
        addSubview(championshipsWinAnswer)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            championshipsWinTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            championshipsWinTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            championshipsWinAnswer.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            championshipsWinAnswer.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

