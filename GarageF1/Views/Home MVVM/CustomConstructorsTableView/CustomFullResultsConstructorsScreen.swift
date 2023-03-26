//
//  CustomFullResultsConstructorsScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 25/03/23.
//

import UIKit

class CustomFullResultsConstructorsScreen: UIView {
    
    lazy var positionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 10)
        return label
    }()
    
    lazy var imageTeams: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 45
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFit
        return image
    }()

    lazy var nameTeamsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var scoreLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        addSubview(positionLabel)
        addSubview(imageTeams)
        addSubview(nameTeamsLabel)
        addSubview(scoreLabel)
    }
    
    func setUpConstraints() {
        NSLayoutConstraint.activate([
            
//            positionLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
//            positionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
//            
//            imageTeams.topAnchor.constraint(equalTo: topAnchor, constant: 5),
//            imageTeams.leadingAnchor.constraint(equalTo: positionLabel.leadingAnchor, constant: 30),
//            
//            nameTeamsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 37),
//            nameTeamsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 140),
//            nameTeamsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
//            nameTeamsLabel.heightAnchor.constraint(equalToConstant: 20),
//            
//            scoreLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30),
//            scoreLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 280),
//            scoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
//            scoreLabel.heightAnchor.constraint(equalToConstant: 40),
        
        ])
    }
    
}
