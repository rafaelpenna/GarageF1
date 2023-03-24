//
//  CustomStandingCollectionViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/03/23.
//

import UIKit

class CustomStandingCollectionViewCell: UICollectionViewCell {
    
    static let identifier: String = "CustomStandingCollectionViewCell"
    var data: [HomeRacer] = []
    let customStandingCollectionScreen: CustomStandingCollectionScreen = CustomStandingCollectionScreen()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubView()
        setUpConstraints()
    }
    
    func setupCell(data: HomeRacer) {
        customStandingCollectionScreen.pilot.image = UIImage(named: data.name)
        customStandingCollectionScreen.namePilot.text = data.nameImage
        customStandingCollectionScreen.nameTeams.text = data.nameTeams
        customStandingCollectionScreen.indicePilot.text = data.indice
    }
    
    func dataCollection(data: [HomeRacer]) {
        self.data = data
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
