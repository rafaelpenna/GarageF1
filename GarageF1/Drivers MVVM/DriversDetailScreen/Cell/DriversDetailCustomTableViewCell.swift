//
//  DriversDetailCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import UIKit

class DriversDetailCustomTableViewCell: UITableViewCell {
    
    var birthDate: BirthDateCustomTableViewCellScreen = BirthDateCustomTableViewCellScreen()
    var birthLocation: BirthLocationCustomTableViewCellScreen = BirthLocationCustomTableViewCellScreen()
    var championshipsWin: ChampionshipsWinCustomTableViewCellScreen = ChampionshipsWinCustomTableViewCellScreen()
    var races: RacesCustomTableViewCellScreen = RacesCustomTableViewCellScreen()
    var podiums: PodiumsCustomTableViewCellScreen = PodiumsCustomTableViewCellScreen()
    var points: PointsCustomTableViewCellScreen = PointsCustomTableViewCellScreen()
    var bestRacePosition: BestRacePositionCustomTableViewCellScreen = BestRacePositionCustomTableViewCellScreen()
    var bestGridPosition: BestGridPositionCustomTableViewCellScreen = BestGridPositionCustomTableViewCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        autoresizingFalse()
        addElements()
        configScreenConstraints()
    }
    
    private func autoresizingFalse() {
        birthDate.translatesAutoresizingMaskIntoConstraints = false
        birthLocation.translatesAutoresizingMaskIntoConstraints = false
        championshipsWin.translatesAutoresizingMaskIntoConstraints = false
        races.translatesAutoresizingMaskIntoConstraints = false
        podiums.translatesAutoresizingMaskIntoConstraints = false
        points.translatesAutoresizingMaskIntoConstraints = false
        bestRacePosition.translatesAutoresizingMaskIntoConstraints = false
        bestGridPosition.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addElements() {
        contentView.addSubview(birthDate)
        contentView.addSubview(birthLocation)
        contentView.addSubview(championshipsWin)
        contentView.addSubview(races)
        contentView.addSubview(podiums)
        contentView.addSubview(points)
        contentView.addSubview(bestRacePosition)
        contentView.addSubview(bestGridPosition)
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
