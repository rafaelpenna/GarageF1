//
//  RacesCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import UIKit

class RacesCustomTableViewCell: UITableViewCell {
    
    var viewModel: RacesCustomCellViewModel?
    
    var screen: RaceCustomTableViewCellScreen = RaceCustomTableViewCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.screen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.screen)
        self.configScreenConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    func setupCell(driver:RacesModel){
        viewModel = RacesCustomCellViewModel(data: driver)
        backgroundColor = .none
        
        screen.roundLabel.text = "Round \(viewModel!.getRaceRound)"
        screen.countryLabel.text = viewModel?.getRaceCountry
        screen.descriptionLabel.text = viewModel?.getRaceDescription
        screen.dayLabel.text = viewModel?.getRaceDay
        screen.monthLabel.text = viewModel?.getRaceMonth
    }
    
    private func configScreenConstraints(){
        NSLayoutConstraint.activate([
            screen.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            screen.topAnchor.constraint(equalTo: self.topAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
