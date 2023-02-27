//
//  HistoryTeamsTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 30/01/23.
//

import UIKit

class HistoryTeamsTableViewCell: UITableViewCell {

    var data: [HistoryTeamsModel] = []
    static let identifier: String = "HistoryTeamsTableViewCell"
    var customInfoTeams: CustomCellHistoryTeams = CustomCellHistoryTeams()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
   
        self.addComponents()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func dataTableView(data: [HistoryTeamsModel]) {
        self.data = data
    }
    
    func addComponents() {
        customInfoTeams.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customInfoTeams)
    }

    func setupCell(data: HistoryTeamsModel){
        
        customInfoTeams.positionLabel.text = data.teamsPosition
        customInfoTeams.teamLabel.text = data.teamsName
        customInfoTeams.pointsLabel.text = data.seasonTeamsPoints
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            customInfoTeams.leadingAnchor.constraint(equalTo: leadingAnchor),
            customInfoTeams.trailingAnchor.constraint(equalTo: trailingAnchor),
            customInfoTeams.topAnchor.constraint(equalTo: topAnchor),
            customInfoTeams.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
