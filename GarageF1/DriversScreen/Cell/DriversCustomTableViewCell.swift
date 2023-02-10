//
//  DriversCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversCustomTableViewCell: UITableViewCell {
    
    var viewModel: DriversCustomCellViewModel?
    
    var screen: DriversCustomTableViewCellScreen = DriversCustomTableViewCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.screen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.screen)
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func setupCell(driver:Drivers){
        self.viewModel = DriversCustomCellViewModel(data: driver)
        
        screen.positionLabel.text = viewModel?.getDriversPosition
        screen.photoDriverImageView.image = viewModel?.getDriversPhoto
        screen.nameLabel.text = viewModel?.getDriversName
        screen.nameLabel.text = viewModel?.getDriversLastName
        screen.teamLabel.text = viewModel?.getTeam
        screen.pointsLabel.text = viewModel?.getPoints
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            screen.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            screen.topAnchor.constraint(equalTo: self.topAnchor),
            screen.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
