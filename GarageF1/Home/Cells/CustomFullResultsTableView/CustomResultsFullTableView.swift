//
//  CustomFullResultsTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 17/03/23.
//

import UIKit

class CustomResultsFullTableView: UITableViewCell {

    static let identifier: String = String(describing: CustomResultsFullTableView.self)

    let customFullResultsScreen: CustomFullResultsScreen = CustomFullResultsScreen()
    var cellViewModel: FullResultsSecondViewModel?
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addComponents()
        self.setUpConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupCell(constructors: ConstructorStanding18) {
        self.cellViewModel = FullResultsSecondViewModel(data: constructors)
        
        customFullResultsScreen.indiceLabel.text = cellViewModel?.getConstructorsPosition
        customFullResultsScreen.imageTeams.image = cellViewModel?.getDriversPhoto
        customFullResultsScreen.nameTeams.text = cellViewModel?.getConstructorsName
        customFullResultsScreen.score.text = cellViewModel?.getConstructorsPoints

    }


    private func addComponents() {
        customFullResultsScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customFullResultsScreen)
    }

    private func setUpConstraints() {
        NSLayoutConstraint.activate([

            customFullResultsScreen.topAnchor.constraint(equalTo: topAnchor),
            customFullResultsScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            customFullResultsScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            customFullResultsScreen.bottomAnchor.constraint(equalTo: bottomAnchor)

        ])
    }
}
