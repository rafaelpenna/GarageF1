//
//  DuelDriversTableViewScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 22/05/23.
//

import Foundation

import UIKit

class DuelDriversTableViewCell: UITableViewCell {

    var data: [DuelDropdownModel] = []
    var customDriversName: CustomCellDuelDrivers = CustomCellDuelDrivers()
    var yearsViewModel: DuelViewModel?
    
    static let identifier: String = String(describing: DuelDriversTableViewCell.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addComponents()
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addComponents() {
        customDriversName.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customDriversName)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            customDriversName.leadingAnchor.constraint(equalTo: leadingAnchor),
            customDriversName.trailingAnchor.constraint(equalTo: trailingAnchor),
            customDriversName.topAnchor.constraint(equalTo: topAnchor),
            customDriversName.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
