//
//  CustomStandingCollectionViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/03/23.
//

import UIKit

class CustomStandingCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = String(describing: CustomStandingCollectionViewCell.self)
    let customStandingCollectionScreen: CustomStandingCollectionScreen = CustomStandingCollectionScreen()
    var cellViewModel: HomeCustomCellViewModel?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubView()
        setUpConstraints()
    }
    
    func setupCell(driver: DriverStanding10) {
        self.cellViewModel = HomeCustomCellViewModel(data: driver)
        
        customStandingCollectionScreen.namePilot.text = cellViewModel?.getDriversLastName
        customStandingCollectionScreen.pilot.image = cellViewModel?.getDriversPhoto
        customStandingCollectionScreen.namePilot.text = cellViewModel?.getDriversLastName
        customStandingCollectionScreen.nameTeams.text = cellViewModel?.getTeam
        customStandingCollectionScreen.indicePilot.text = cellViewModel?.getDriversPosition

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubView() {
        
        customStandingCollectionScreen.layer.borderWidth = 4.0
        customStandingCollectionScreen.layer.cornerRadius = 10
        customStandingCollectionScreen.layer.borderColor = UIColor.red.cgColor
        customStandingCollectionScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(customStandingCollectionScreen)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            customStandingCollectionScreen.topAnchor.constraint(equalTo: topAnchor),
            customStandingCollectionScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            customStandingCollectionScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            customStandingCollectionScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
}
