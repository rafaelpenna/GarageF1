//
//  CustomDuelTableViewScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 16/03/23.
//

//import UIKit
//
//class CustomDuelTableViewScreen: UIView {
//    
//    lazy var whoIsTheBestLabel: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = "Quem é o melhor?"
//        label.numberOfLines = 0
//        label.font = UIFont.boldSystemFont(ofSize: 20)
//        label.textColor = .white
//        return label
//    }()
//    
//    lazy var descriptionLabel: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.text = """
//                        Simule um duelo entre os melhores pilotos da
//                        história da Fórmula 1
//                        """
//        label.numberOfLines = 0
//        label.font = UIFont.systemFont(ofSize: 17)
//        label.textColor = .white
//        return label
//    }()
//    
//    lazy var duelCollection: UICollectionView = {
//        let collection = UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewLayout.init())
//        collection.translatesAutoresizingMaskIntoConstraints = false
//        collection.showsHorizontalScrollIndicator = false
//        collection.delaysContentTouches = false
//        collection.register(CollectionCustomDuelCell.self, forCellWithReuseIdentifier: CollectionCustomDuelCell.identifier)
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
//        layout.scrollDirection = .horizontal
//        collection.setCollectionViewLayout(layout, animated: false)
//        return collection
//    }()
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        addSubview()
//        configConstraints()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    func addSubview() {
//        addSubview(duelCollection)
//        addSubview(whoIsTheBestLabel)
//        addSubview(descriptionLabel)
//    }
//    
//    func configProtocolsDuelCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
//        duelCollection.delegate = delegate
//        duelCollection.dataSource = dataSource
//    }
//    
//    private func configConstraints() {
//        NSLayoutConstraint.activate([
//            
//            whoIsTheBestLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
//            whoIsTheBestLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            
//            descriptionLabel.topAnchor.constraint(equalTo: whoIsTheBestLabel.bottomAnchor, constant: 2),
//            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            
//            duelCollection.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
//            duelCollection.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
//            duelCollection.trailingAnchor.constraint(equalTo: trailingAnchor),
//            duelCollection.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
//            
//            
//        ])
//    }
//}
