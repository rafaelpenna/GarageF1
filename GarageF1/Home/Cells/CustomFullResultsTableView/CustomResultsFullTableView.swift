//
//  CustomFullResultsTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 17/03/23.
//

import UIKit

class CustomResultsFullTableView: UITableViewCell {

    static let identifier: String = String(describing: CustomResultsFullTableView.self)
    
    var data: [HomeResults] = []
    let customFullResultsScreen: CustomFullResultsScreen = CustomFullResultsScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addComponents()
        self.setUpConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupCell(data: HomeResults) {
        customFullResultsScreen.indiceLabel.text = data.indice
        customFullResultsScreen.imageTeams.image = UIImage(named: data.imageTeams)
        customFullResultsScreen.nameTeams.text = data.namePilot
        customFullResultsScreen.score.text = data.score
    }

    public func dataTableView(data: [HomeResults]) {
        self.data = data
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
