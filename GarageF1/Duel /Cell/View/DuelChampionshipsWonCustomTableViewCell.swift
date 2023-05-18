//
//  DuelChampionshipsWonCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelChampionshipsWonCustomTableViewCell: UITableViewCell {

    static let identifier = String(describing: DuelChampionshipsWonCustomTableViewCell.self)
    
    var championshipsWinTitle: UILabel = {
        let variable = UILabel()
        variable.textColor = .gray
        variable.text = "Campeonatos"
        variable.font = UIFont.systemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var championshipsWinAnswerLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.textAlignment = .center
        return variable
    }()
    
    var championshipsWinAnswerRight: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 18)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.textAlignment = .center
        return variable
    }()
    
    var championshipsWinAnswerYearLeft: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 16)
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.numberOfLines = 0
        return variable
    }()
    
    var championshipsWinAnswerYearRight: UILabel = {
        let variable = UILabel()
        variable.textColor = .black
        variable.font = UIFont.boldSystemFont(ofSize: 16)
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
    
    lazy var dataBackgroundLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        return label
    }()
    
    public func configure() {
        addSubViews()
        configConstraintsInfoDriver()
        backgroundColor()
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
    }
    
    private func addSubViews(){
        addSubview(dataBackgroundLabel)
        addSubview(championshipsWinTitle)
        addSubview(championshipsWinAnswerYearLeft)
        addSubview(championshipsWinAnswerYearRight)
        addSubview(championshipsWinAnswerLeft)
        addSubview(championshipsWinAnswerRight)
        addSubview(divisionLabels)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            championshipsWinTitle.topAnchor.constraint(equalTo: topAnchor),
            championshipsWinTitle.centerXAnchor.constraint(equalTo: centerXAnchor),

            championshipsWinAnswerLeft.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            championshipsWinAnswerLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            championshipsWinAnswerLeft.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            championshipsWinAnswerRight.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            championshipsWinAnswerRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            championshipsWinAnswerRight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            championshipsWinAnswerYearLeft.topAnchor.constraint(equalTo: championshipsWinAnswerLeft.bottomAnchor, constant: 4),
            championshipsWinAnswerYearLeft.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10),
            championshipsWinAnswerYearLeft.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            championshipsWinAnswerYearRight.topAnchor.constraint(equalTo: championshipsWinAnswerRight.bottomAnchor, constant: 4),
            championshipsWinAnswerYearRight.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            championshipsWinAnswerYearRight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            divisionLabels.topAnchor.constraint(equalTo: championshipsWinTitle.bottomAnchor, constant: 10),
            divisionLabels.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionLabels.heightAnchor.constraint(equalToConstant: 70),
            divisionLabels.widthAnchor.constraint(equalToConstant: 2),
            
            dataBackgroundLabel.topAnchor.constraint(equalTo: topAnchor),
            dataBackgroundLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            dataBackgroundLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            dataBackgroundLabel.bottomAnchor.constraint(equalTo: divisionLabels.bottomAnchor, constant: 5),
        ])
    }
}
