//
//  CustomFullResultConstructorsTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/03/23.
//

import UIKit

class CustomFullResultConstructorsTableViewCell: UITableViewCell {
    
    static let identifier: String = "CustomFullResultConstructorsTableViewCell"
    
    var customFullResultScreen: CustomFullResultsConstructorsScreen = CustomFullResultsConstructorsScreen()
    
    var data: [DataHomeConstructors] = []

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addComponents()
        setUpConstraints()
    }
    
    func setupCell(data: DataHomeConstructors) {
        
        customFullResultScreen.positionLabel.text = data.position
        customFullResultScreen.imageTeams.image = UIImage(named: data.imageTeams)
        customFullResultScreen.nameTeamsLabel.text = data.nameTeams
        customFullResultScreen.scoreLabel.text = data.points

    }

    public func dataTableView(data: [DataHomeConstructors]) {
        self.data = data
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addComponents() {
        customFullResultScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customFullResultScreen)
    }

    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            customFullResultScreen.topAnchor.constraint(equalTo: topAnchor),
            customFullResultScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            customFullResultScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            customFullResultScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
        
    }
    
}
