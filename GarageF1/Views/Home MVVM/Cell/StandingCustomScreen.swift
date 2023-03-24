//
//  StandingCustomTableViewCell.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/03/23.
//

import UIKit

class StandingCustomScreen: UIView {
    
    private lazy var destaquesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Destaques da temporada"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 22)
        label.textColor = .red
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = """
                        Confira mais informações sobre os pilotos
                        destaque da temporada
                        """
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        return label
    }()
    
    lazy var destaquesCollection: UICollectionView = {
        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.showsHorizontalScrollIndicator = false
        collection.delaysContentTouches = false
        collection.register(CustomStandingCollectionViewCell.self, forCellWithReuseIdentifier: CustomStandingCollectionViewCell.identifier)
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        layout.scrollDirection = .horizontal
        collection.setCollectionViewLayout(layout, animated: false)
        return collection
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubViews()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews(){
        addSubview(destaquesLabel)
        addSubview(descriptionLabel)
        addSubview(destaquesCollection)
    }
    
    
    func configProtocolsStandingCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        destaquesCollection.delegate = delegate
        destaquesCollection.dataSource = dataSource
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            destaquesLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            destaquesLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            descriptionLabel.topAnchor.constraint(equalTo: destaquesLabel.bottomAnchor, constant: 5),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            destaquesCollection.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 5),
            destaquesCollection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            destaquesCollection.trailingAnchor.constraint(equalTo: trailingAnchor),
            destaquesCollection.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            
        ])
    }
}
