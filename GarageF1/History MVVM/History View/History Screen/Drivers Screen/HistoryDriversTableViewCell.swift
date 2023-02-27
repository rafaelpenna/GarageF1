//
//  HistoryDriversTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 24/01/23.
//

import UIKit

class HistoryDriversTableViewCell: UITableViewCell {

    var data: [HistoryDriversModel] = []
    static let identifier: String = "HistoryDriversTableViewCell"
    var customInfoDrivers: CustomCellHistoryDrivers = CustomCellHistoryDrivers()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
   
        self.addComponents()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func dataTableView(data: [HistoryDriversModel]) {
        self.data = data
    }
    
    func addComponents() {
        customInfoDrivers.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customInfoDrivers)
    }

    func setupCell(data: HistoryDriversModel){
        
        customInfoDrivers.positionLabel.text = data.driversPosition
        customInfoDrivers.nameLabel.text = data.driversName
        customInfoDrivers.lastNameLabel.text = data.driversLastName
        customInfoDrivers.teamLabel.text = data.teamsDriversName
        customInfoDrivers.pointsLabel.text = data.seasonDriversPoints
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            customInfoDrivers.leadingAnchor.constraint(equalTo: leadingAnchor),
            customInfoDrivers.trailingAnchor.constraint(equalTo: trailingAnchor),
            customInfoDrivers.topAnchor.constraint(equalTo: topAnchor),
            customInfoDrivers.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
