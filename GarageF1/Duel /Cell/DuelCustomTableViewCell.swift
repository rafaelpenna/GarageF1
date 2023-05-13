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
        
        self.autoresizingFalse()
        self.addElements()
        self.configScreenConstraints()
    }
    
    private func autoresizingFalse() {
        birthDate.translatesAutoresizingMaskIntoConstraints = false
        birthLocation.translatesAutoresizingMaskIntoConstraints = false
        championshipsWon.translatesAutoresizingMaskIntoConstraints = false
        racesParticipated.translatesAutoresizingMaskIntoConstraints = false
        podiumsEarned.translatesAutoresizingMaskIntoConstraints = false
        pointsEarned.translatesAutoresizingMaskIntoConstraints = false
        wins.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addElements() {
        self.contentView.addSubview(birthDate)
        self.contentView.addSubview(birthLocation)
        self.contentView.addSubview(championshipsWon)
        self.contentView.addSubview(racesParticipated)
        self.contentView.addSubview(podiumsEarned)
        self.contentView.addSubview(pointsEarned)
        self.contentView.addSubview(wins)
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
