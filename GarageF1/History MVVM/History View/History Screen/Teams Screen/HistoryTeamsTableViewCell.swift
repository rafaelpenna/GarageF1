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
    var teamsViewModel: TeamsScreenViewModel?
    
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

    func setupCell(teamData: HistoryTeamsModel){
        self.teamsViewModel = TeamsScreenViewModel(data: teamData)
        
        customInfoTeams.positionLabel.text = teamsViewModel?.getTeamsPosition
        customInfoTeams.teamLabel.text = teamsViewModel?.getTeamsName
        customInfoTeams.pointsLabel.text = teamsViewModel?.getSeasonTeamsPoints
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
