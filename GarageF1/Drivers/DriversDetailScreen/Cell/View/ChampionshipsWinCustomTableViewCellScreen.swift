//
//  ChampionshipsWinCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import Foundation
import UIKit

class ChampionshipsWinCustomTableViewCellScreen: UITableViewCell {
    
    static let identifier = String(describing: ChampionshipsWinCustomTableViewCellScreen.self)
    
    var championshipsWinTitleLabel: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Campeonatos"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var championshipsWinAnswerLabel: UILabel = {
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
        addSubview(championshipsWinTitleLabel)
        addSubview(championshipsWinAnswerLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            championshipsWinTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            championshipsWinTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),

            championshipsWinAnswerLabel.topAnchor.constraint(equalTo: championshipsWinTitleLabel.bottomAnchor, constant: 10),
            championshipsWinAnswerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 35),
        ])
    }
}

