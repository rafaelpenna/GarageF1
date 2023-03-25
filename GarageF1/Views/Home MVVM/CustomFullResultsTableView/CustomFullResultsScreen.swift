//
//  CustomFullResultsScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 17/03/23.
//

import UIKit

class CustomFullResultsScreen: UIView {

    lazy var indiceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 35)
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
    
    lazy var nameTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var score: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
//    lazy var division: UILabel = {
//        let label = UILabel()
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.backgroundColor = .black
//        label.text = ""
//        return label
//    }()
    
    lazy var topNameTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var topScoreTeams: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.components()
        self.setUpConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func components() {
        addSubview(indiceLabel)
        addSubview(imageTeams)
        addSubview(nameTeams)
        addSubview(score)
//        addSubview(division)
        addSubview(topNameTeams)
        addSubview(topScoreTeams)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([

        
            indiceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 90),
            indiceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            imageTeams.topAnchor.constraint(equalTo: topAnchor, constant: 65),
            imageTeams.leadingAnchor.constraint(equalTo: indiceLabel.leadingAnchor, constant: 30),
            imageTeams.heightAnchor.constraint(equalToConstant: 90),
            imageTeams.widthAnchor.constraint(equalToConstant: 90),
            
            nameTeams.topAnchor.constraint(equalTo: topAnchor, constant: 98),
            nameTeams.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 140),
            nameTeams.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            nameTeams.heightAnchor.constraint(equalToConstant: 20),
            
            score.topAnchor.constraint(equalTo: topAnchor, constant: 88),
            score.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 280),
            score.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            score.heightAnchor.constraint(equalToConstant: 40),
            
//            division.topAnchor.constraint(equalTo: topAnchor, constant: 20),
//            division.leadingAnchor.constraint(equalTo: leadingAnchor),
//            division.trailingAnchor.constraint(equalTo: trailingAnchor),
//            division.bottomAnchor.constraint(equalTo: nameTeams.topAnchor),
            
            topNameTeams.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            topNameTeams.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 150),
            topNameTeams.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
            topScoreTeams.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            topScoreTeams.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 300),
            topScoreTeams.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            
        ])
    }
}
