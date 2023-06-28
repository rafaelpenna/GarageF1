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
        label.font = UIFont.boldSystemFont(ofSize: 48)
        label.textColor = .black
        return label
    }()
    
    lazy var namePilot: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 16.5)
        label.numberOfLines = 0
        label.textColor = .black
        return label
    }()
    
    lazy var nameTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 14.5)
        label.textColor = .black
        label.numberOfLines = 0
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
            
            indicePilot.centerYAnchor.constraint(equalTo: centerYAnchor),
            indicePilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            indicePilot.widthAnchor.constraint(equalToConstant: 60),
            
            namePilot.topAnchor.constraint(equalTo: topAnchor, constant: 53),
            namePilot.leadingAnchor.constraint(equalTo: indicePilot.trailingAnchor, constant: 8),
            namePilot.trailingAnchor.constraint(equalTo: pilot.leadingAnchor),
            
            nameTeams.topAnchor.constraint(equalTo: namePilot.bottomAnchor, constant: 2),
            nameTeams.leadingAnchor.constraint(equalTo: indicePilot.trailingAnchor, constant: 8),
            nameTeams.trailingAnchor.constraint(equalTo: pilot.leadingAnchor),
            
            pilot.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            pilot.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 170),
            pilot.trailingAnchor.constraint(equalTo: trailingAnchor),
            pilot.heightAnchor.constraint(equalToConstant: 150),
            
        ])
    }
}
