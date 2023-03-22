//
//  DuelChampionshipsWonCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelChampionshipsWonCustomTableViewCell: UITableViewCell {

    static let identifier = "DuelChampionshipsWonCustomTableViewCell"
    
    var championshipsWinTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Campeonatos"
        variable.font = UIFont.systemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var championshipsWinAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var championshipsWinAnswerRight: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    lazy var divisionLabels: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
    }
    
    private func addSubViews(){
        addSubview(championshipsWinTitle)
        addSubview(championshipsWinAnswerLeft)
        addSubview(championshipsWinAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            championshipsWinTitle.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            championshipsWinTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            championshipsWinAnswerLeft.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            championshipsWinAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -30),
            
            championshipsWinAnswerRight.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            championshipsWinAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 30),
            
            divisionLabels.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.heightAnchor.constraint(equalTo: championshipsWinAnswerLeft.heightAnchor),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
        ])
    }

}
