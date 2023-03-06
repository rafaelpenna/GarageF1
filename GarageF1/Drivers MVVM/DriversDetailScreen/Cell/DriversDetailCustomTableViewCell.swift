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
        
        self.birthDate.translatesAutoresizingMaskIntoConstraints = false
        self.birthLocation.translatesAutoresizingMaskIntoConstraints = false
        self.championshipsWin.translatesAutoresizingMaskIntoConstraints = false
        self.races.translatesAutoresizingMaskIntoConstraints = false
        self.podiums.translatesAutoresizingMaskIntoConstraints = false
        self.points.translatesAutoresizingMaskIntoConstraints = false
        self.bestRacePosition.translatesAutoresizingMaskIntoConstraints = false
        self.bestGridPosition.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(self.birthDate)
        self.contentView.addSubview(self.birthLocation)
        self.contentView.addSubview(self.championshipsWin)
        self.contentView.addSubview(self.races)
        self.contentView.addSubview(self.podiums)
        self.contentView.addSubview(self.points)
        self.contentView.addSubview(self.bestRacePosition)
        self.contentView.addSubview(self.bestGridPosition)
        
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
