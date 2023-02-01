//
//  HistoryTeamsTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 30/01/23.
//

import UIKit

class HistoryTeamsTableViewCell: UITableViewCell {

    var data: [TeamsHistory] = []
    static let identifier: String = "HistoryTeamsTableViewCell"
    var customDrivers: CustomHistoryTeamsTableViewScreen = CustomHistoryTeamsTableViewScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
   
        self.addComponents()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func dataTableView(data: [TeamsHistory]) {
        self.data = data
    }
    
    func addComponents() {
        customDrivers.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customDrivers)
    }

    func setupCell(data: TeamsHistory){
        
        customDrivers.positionLabel.text = data.position
        customDrivers.teamLabel.text = data.teamsName
        customDrivers.pointsLabel.text = data.seasonPoints
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
