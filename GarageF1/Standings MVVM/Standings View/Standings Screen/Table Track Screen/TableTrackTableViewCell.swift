//
//  TableTrackTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class TableTrackTableViewCell: UITableViewCell {

    var trackImage: TrackImageCellScreen = TrackImageCellScreen()
    var circuitLenght: CircuitLenghtCellScreen = CircuitLenghtCellScreen()
    var raceLaps: RaceLapsCellScreen = RaceLapsCellScreen()
    var firstGP: FirstGrandPrixCellScreen = FirstGrandPrixCellScreen()
    var raceDistance: RaceDistanceCellScreen = RaceDistanceCellScreen()
    var trackRecord: TrackRecordCellScreen = TrackRecordCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.trackImage.translatesAutoresizingMaskIntoConstraints = false
        self.circuitLenght.translatesAutoresizingMaskIntoConstraints = false
        self.raceLaps.translatesAutoresizingMaskIntoConstraints = false
        self.firstGP.translatesAutoresizingMaskIntoConstraints = false
        self.raceDistance.translatesAutoresizingMaskIntoConstraints = false
        self.trackRecord.translatesAutoresizingMaskIntoConstraints = false
        
        self.contentView.addSubview(self.trackImage)
        self.contentView.addSubview(self.circuitLenght)
        self.contentView.addSubview(self.raceLaps)
        self.contentView.addSubview(self.firstGP)
        self.contentView.addSubview(self.raceDistance)
        self.contentView.addSubview(self.trackRecord)

        
        self.configScreenConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreenConstraints(){
        NSLayoutConstraint.activate([
            trackImage.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            trackImage.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            trackImage.topAnchor.constraint(equalTo: self.topAnchor),
            trackImage.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            
            circuitLenght.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            circuitLenght.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            circuitLenght.topAnchor.constraint(equalTo: self.topAnchor),
            circuitLenght.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
