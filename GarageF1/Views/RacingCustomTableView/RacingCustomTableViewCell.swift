//
//  RacingCustomTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 06/02/23.
//

import UIKit

class RacingCustomTableViewCell: UITableViewCell {
    
    static var identifier: String = "RacingCustomTableViewCell"
    var data: [DataRacer] = []
    var racingTableViewScreen: RacingTableViewScreen = RacingTableViewScreen()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addComponents()
        setUpConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(data: DataRacer) {
        racingTableViewScreen.roundLabel.text = data.roundLabel
        racingTableViewScreen.countryLabel.text = data.countryLabel
        racingTableViewScreen.descriptionLabel.text = data.descriptionLabel
        racingTableViewScreen.dayLabel.text = data.dayLabel
        racingTableViewScreen.monthLabel.text = data.monthLabel
    }
    
    public func dataTableView(data: [DataRacer]) {
        self.data = data
    }
    
    private func addComponents() {
        racingTableViewScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(racingTableViewScreen)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            racingTableViewScreen.topAnchor.constraint(equalTo: topAnchor),
            racingTableViewScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            racingTableViewScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            racingTableViewScreen.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
    }

}
