//
//  StandingsTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 03/02/23.
//

import UIKit

class StandingsTableViewCell: UITableViewCell {

    var data: [Standings] = []
    static let identifier: String = "StandingsTableViewCell"
    var customDrivers: CustomStandingsTableViewScreen = CustomStandingsTableViewScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
   
        self.addComponents()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func dataTableView(data: [Standings]) {
        self.data = data
    }
    
    func addComponents() {
        customDrivers.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customDrivers)
    }

    func setupCell(data: Standings){
        
        customDrivers.positionLabel.text = data.position
        customDrivers.colorLabel.text = data.teamsName
        customDrivers.nameCodeLabel.text = data.driversCode
        customDrivers.timeLabel.text = data.time
        customDrivers.pointsLabel.text = data.currentcurrentPoints
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            customDrivers.leadingAnchor.constraint(equalTo: leadingAnchor),
            customDrivers.trailingAnchor.constraint(equalTo: trailingAnchor),
            customDrivers.topAnchor.constraint(equalTo: topAnchor),
            customDrivers.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}

