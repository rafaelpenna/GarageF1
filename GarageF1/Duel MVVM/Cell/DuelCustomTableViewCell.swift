//
//  DuelCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelCustomTableViewCell: UITableViewCell {

    var birthDate: DuelBirthDateCustomTableViewCell = DuelBirthDateCustomTableViewCell()
    var birthLocation: DuelBirthLocationCustomTableViewCell = DuelBirthLocationCustomTableViewCell()
    var championshipsWon: DuelChampionshipsWonCustomTableViewCell = DuelChampionshipsWonCustomTableViewCell()
    var racesParticipated: DuelRacesParticipatedCustomTableViewCell = DuelRacesParticipatedCustomTableViewCell()
    var podiumsEarned: DuelPodiumsEarnedCustomTableViewCell = DuelPodiumsEarnedCustomTableViewCell()
    var pointsEarned: DuelPointsEarnedCustomTableViewCell = DuelPointsEarnedCustomTableViewCell()
    var wins: DuelWinsCustomTableViewCell = DuelWinsCustomTableViewCell()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.birthDate.translatesAutoresizingMaskIntoConstraints = false
        self.birthLocation.translatesAutoresizingMaskIntoConstraints = false
        self.championshipsWon.translatesAutoresizingMaskIntoConstraints = false
        self.racesParticipated.translatesAutoresizingMaskIntoConstraints = false
        self.podiumsEarned.translatesAutoresizingMaskIntoConstraints = false
        self.pointsEarned.translatesAutoresizingMaskIntoConstraints = false
        self.wins.translatesAutoresizingMaskIntoConstraints = false

        
        self.contentView.addSubview(self.birthDate)
        self.contentView.addSubview(self.birthLocation)
        self.contentView.addSubview(self.championshipsWon)
        self.contentView.addSubview(self.racesParticipated)
        self.contentView.addSubview(self.podiumsEarned)
        self.contentView.addSubview(self.pointsEarned)
        self.contentView.addSubview(self.wins)
        
        self.configScreenConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreenConstraints(){
        NSLayoutConstraint.activate([
            birthDate.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            birthDate.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            birthDate.topAnchor.constraint(equalTo: self.topAnchor),
            birthDate.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            birthLocation.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            birthLocation.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            birthLocation.topAnchor.constraint(equalTo: self.topAnchor),
            birthLocation.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }

}
