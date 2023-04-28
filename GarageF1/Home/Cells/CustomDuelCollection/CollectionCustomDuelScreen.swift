//
//  CollectionCustomDuelScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 16/03/23.
//

//import UIKit
//
//class CollectionCustomDuelScreen: UIView {
//
//    lazy var namePilot: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.textAlignment = .center
//        label.font = UIFont.boldSystemFont(ofSize: 25)
//        label.textColor = .black
//        label.numberOfLines = 0
//        return label
//    }()
//    
//    lazy var imagePilot: UIImageView = {
//        let image = UIImageView()
//        image.translatesAutoresizingMaskIntoConstraints = false
//        image.contentMode = .scaleAspectFit
//        return image
//    }()
//
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        
//        addComponents()
//        setUpConstraints()
//    }
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    
//    private func addComponents() {
//
//        addSubview(namePilot)
//        addSubview(imagePilot)
//       
//    }
//    
//    private func setUpConstraints() {
//        NSLayoutConstraint.activate([
//            
//            namePilot.centerXAnchor.constraint(equalTo: centerXAnchor),
//            namePilot.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
//         
//            imagePilot.centerXAnchor.constraint(equalTo: centerXAnchor),
//            imagePilot.topAnchor.constraint(equalTo: topAnchor, constant: 10),
//            imagePilot.heightAnchor.constraint(equalToConstant: 140)
//        
//        ])
//    }
//}
