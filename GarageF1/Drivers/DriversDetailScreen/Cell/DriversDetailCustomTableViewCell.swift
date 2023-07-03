//
//  DriversDetailCustomTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 15/02/23.
//

import UIKit

class DriversDetailCustomTableViewCell: UITableViewCell {
    
    var infoDrivers: InfoDriversCustomTableViewCellScreen = InfoDriversCustomTableViewCellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        autoresizingFalse()
        addElements()
        configScreenConstraints()
    }
    
    private func autoresizingFalse() {
        infoDrivers.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func addElements() {
        contentView.addSubview(infoDrivers)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configScreenConstraints(){
        NSLayoutConstraint.activate([
            
            infoDrivers.leadingAnchor.constraint(equalTo: leadingAnchor),
            infoDrivers.trailingAnchor.constraint(equalTo: trailingAnchor),
            infoDrivers.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
