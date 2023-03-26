//
//  TableViewDriversDetailCustomCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 12/03/23.
//

import UIKit

class TableViewDriversDetailCustomCell: UITableViewCell {
    
    var tableViewBirthDateCellScreen: TableViewBirthDateCellScreen = TableViewBirthDateCellScreen()
    var tableViewBirthLocationCellScreen: TableViewBirthLocationCellScreen = TableViewBirthLocationCellScreen()
    var tableViewChampionshipsWinCellScreen: TableViewChampionshipsWinCellScreen = TableViewChampionshipsWinCellScreen()
    var tableViewRacesCustomTCellScreen: TableViewRacesCustomTCellScreen = TableViewRacesCustomTCellScreen()
    var tableViewPodiumsCustomCellScreen: TableViewPodiumsCustomCellScreen = TableViewPodiumsCustomCellScreen()
    var tableViewPointsCustomCellScreen: TableViewPointsCustomCellScreen = TableViewPointsCustomCellScreen()
    var tableViewBestRacePositionCustomCellScreen: TableViewBestRacePositionCustomCellScreen = TableViewBestRacePositionCustomCellScreen()
    var tableViewBestGridPositionCustomCellScreen: TableViewBestGridPositionCustomCellScreen = TableViewBestGridPositionCustomCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        tableViewBirthDateCellScreen.translatesAutoresizingMaskIntoConstraints = false
        tableViewBirthLocationCellScreen.translatesAutoresizingMaskIntoConstraints = false
        tableViewChampionshipsWinCellScreen.translatesAutoresizingMaskIntoConstraints = false
        tableViewRacesCustomTCellScreen.translatesAutoresizingMaskIntoConstraints = false
        tableViewPodiumsCustomCellScreen.translatesAutoresizingMaskIntoConstraints = false
        tableViewPointsCustomCellScreen.translatesAutoresizingMaskIntoConstraints = false
        tableViewBestRacePositionCustomCellScreen.translatesAutoresizingMaskIntoConstraints = false
        tableViewBestGridPositionCustomCellScreen.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(tableViewBirthDateCellScreen)
        contentView.addSubview(tableViewBirthLocationCellScreen)
        contentView.addSubview(tableViewChampionshipsWinCellScreen)
        contentView.addSubview(tableViewRacesCustomTCellScreen)
        contentView.addSubview(tableViewPodiumsCustomCellScreen)
        contentView.addSubview(tableViewPointsCustomCellScreen)
        contentView.addSubview(tableViewBestRacePositionCustomCellScreen)
        contentView.addSubview(tableViewBestGridPositionCustomCellScreen)
        
        configScreenConstraints()
        
    }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
     
        private func configScreenConstraints(){
            NSLayoutConstraint.activate([
                
                tableViewBirthLocationCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableViewBirthLocationCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableViewBirthLocationCellScreen.topAnchor.constraint(equalTo: topAnchor),
                tableViewBirthLocationCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                tableViewBirthLocationCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableViewBirthLocationCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableViewBirthLocationCellScreen.topAnchor.constraint(equalTo: topAnchor),
                tableViewBirthLocationCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                tableViewChampionshipsWinCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableViewChampionshipsWinCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableViewChampionshipsWinCellScreen.topAnchor.constraint(equalTo: topAnchor),
                tableViewChampionshipsWinCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                tableViewRacesCustomTCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableViewRacesCustomTCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableViewRacesCustomTCellScreen.topAnchor.constraint(equalTo: topAnchor),
                tableViewRacesCustomTCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                tableViewPodiumsCustomCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableViewPodiumsCustomCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableViewPodiumsCustomCellScreen.topAnchor.constraint(equalTo: topAnchor),
                tableViewPodiumsCustomCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                tableViewPointsCustomCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableViewPointsCustomCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableViewPointsCustomCellScreen.topAnchor.constraint(equalTo: topAnchor),
                tableViewPointsCustomCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                tableViewBestRacePositionCustomCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableViewBestRacePositionCustomCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableViewBestRacePositionCustomCellScreen.topAnchor.constraint(equalTo: topAnchor),
                tableViewBestRacePositionCustomCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
                
                tableViewBestGridPositionCustomCellScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
                tableViewBestGridPositionCustomCellScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
                tableViewBestGridPositionCustomCellScreen.topAnchor.constraint(equalTo: topAnchor),
                tableViewBestGridPositionCustomCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
            ])
        }
}
