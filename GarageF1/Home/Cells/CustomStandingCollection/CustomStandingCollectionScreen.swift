//
//  CustomStandingCollectionScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/03/23.
//

import UIKit

class CustomStandingCollectionScreen: UIView {
    
    lazy var indicePilot: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 80)
        label.textColor = .black
        return label
    }()
    
    lazy var namePilot: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.numberOfLines = 0
        label.textColor = .black
        return label
    }()
    
    lazy var nameTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .black
        return label
    }()
    
    
    lazy var pilot: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addComponents()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addComponents() {

        addSubview(indicePilot)
        addSubview(namePilot)
        addSubview(nameTeams)
        addSubview(pilot)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            
            pilot.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            pilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 170),
            pilot.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilot.heightAnchor.constraint(equalToConstant: 160),
            
            namePilot.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            namePilot.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -180),

            indicePilot.centerYAnchor.constraint(equalTo: centerYAnchor),
            indicePilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),

            nameTeams.topAnchor.constraint(equalTo: namePilot.bottomAnchor, constant: 2),
            nameTeams.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -170),

        
        ])
    }
}
