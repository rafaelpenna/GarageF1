//
//  CustomFullResultConstructorsTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/03/23.
//

import UIKit

class CustomFullResultConstructorsTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: CustomFullResultConstructorsTableViewCell.self)
    
    var customFullResultScreen: CustomFullResultsConstructorsScreen = CustomFullResultsConstructorsScreen()
    var cellViewModel: SecondFullConstructorsViewModel?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addComponents()
        setUpConstraints()
    }
    
    func setupCell(constructors: ConstructorStanding18) {
        self.cellViewModel = SecondFullConstructorsViewModel(data: constructors)
        
        customFullResultScreen.positionLabel.text = cellViewModel?.getConstructorsPosition
        customFullResultScreen.imageTeams.image = cellViewModel?.getDriversPhoto
        customFullResultScreen.nameTeamsLabel.text = cellViewModel?.getConstructorsName
        customFullResultScreen.scoreLabel.text = cellViewModel?.getConstructorsPoints

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
