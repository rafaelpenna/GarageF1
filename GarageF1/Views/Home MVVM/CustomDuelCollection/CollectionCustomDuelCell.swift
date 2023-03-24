//
//  CollectionCustomDuelCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 16/03/23.
//

import UIKit

class CollectionCustomDuelCell: UICollectionViewCell {
    
    var data: [HomeDuel] = []
    let collectionCustomDuelScreen: CollectionCustomDuelScreen = CollectionCustomDuelScreen()
    static let identifier: String = "CollectionCustomDuelCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addComponents()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(data: HomeDuel) {
        
        collectionCustomDuelScreen.namePilot.text = data.namePilot
        collectionCustomDuelScreen.imagePilot.image = UIImage(named: data.imagePilot)

    }
    
    private func addComponents() {
        collectionCustomDuelScreen.layer.borderWidth = 0.5
        collectionCustomDuelScreen.layer.borderColor = UIColor.darkGray.cgColor
        collectionCustomDuelScreen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(collectionCustomDuelScreen)
    }
    
    func dataCollection(data: [HomeDuel]) {
        self.data = data
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            collectionCustomDuelScreen.topAnchor.constraint(equalTo: topAnchor),
            collectionCustomDuelScreen.leadingAnchor.constraint(equalTo: leadingAnchor),
            collectionCustomDuelScreen.trailingAnchor.constraint(equalTo: trailingAnchor),
            collectionCustomDuelScreen.bottomAnchor.constraint(equalTo: bottomAnchor),
        
        ])
    }
}
