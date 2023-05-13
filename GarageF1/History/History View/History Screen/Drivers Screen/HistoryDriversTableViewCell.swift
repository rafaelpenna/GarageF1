//
//  HistoryDriversTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 24/01/23.
//

import UIKit

class HistoryDriversTableViewCell: UITableViewCell {

    var data: [HistoryDriversModel] = []
    var customInfoDrivers: CustomCellHistoryDrivers = CustomCellHistoryDrivers()
    var driversViewModel: DriversScreenViewModel?
    
    static let identifier: String = String(describing: HistoryDriversTableViewCell.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addComponents()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addComponents() {
        customInfoDrivers.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customInfoDrivers)
    }

    func setupCell(driveData:HistoryDriversModel){
        self.driversViewModel = DriversScreenViewModel(data: driveData)
        
        customInfoDrivers.positionLabel.text = driversViewModel?.getDriversPosition
        customInfoDrivers.nameLabel.text = driversViewModel?.getDriversName
        customInfoDrivers.lastNameLabel.text = driversViewModel?.getDriversLastName
        customInfoDrivers.teamLabel.text = driversViewModel?.getTeamsDriversName
        customInfoDrivers.pointsLabel.text = driversViewModel?.getSeasonDriversPoints
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
