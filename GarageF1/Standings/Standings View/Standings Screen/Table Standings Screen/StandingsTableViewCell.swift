//
//  StandingsTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class StandingsTableViewCell: UITableViewCell {

    var data: [Standings] = []
    var customDrivers: CustomStandingsTableViewScreen = CustomStandingsTableViewScreen()
    
    static let identifier: String = String(describing: StandingsTableViewCell.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addComponents()
        configConstraints()
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
        customDrivers.nameCodeLabel.text = data.driversCode
        customDrivers.timeLabel.text = data.time
        customDrivers.pointsLabel.text = data.pointsWon
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
