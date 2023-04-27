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
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()

    lazy var imageTeams: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 10
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

            positionLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            positionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),

            imageTeams.centerYAnchor.constraint(equalTo: centerYAnchor),
            imageTeams.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            imageTeams.heightAnchor.constraint(equalToConstant: 80),
            imageTeams.widthAnchor.constraint(equalToConstant: 80),

            nameTeamsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameTeamsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160),

            scoreLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            scoreLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
        
        ])
    }

}
