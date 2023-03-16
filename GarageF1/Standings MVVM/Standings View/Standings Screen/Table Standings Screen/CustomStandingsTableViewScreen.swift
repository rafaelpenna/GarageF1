//
//  CustomStandingsTableViewScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class CustomStandingsTableViewScreen: UIView {
    
    lazy var positionLabel: UILabel = {
        let positionLabel = UILabel()
        positionLabel.translatesAutoresizingMaskIntoConstraints = false
        positionLabel.font = UIFont.boldSystemFont(ofSize: 24)
        return positionLabel
    }()
    
    lazy var nameCodeLabel: UILabel = {
        let nameCodeLabel = UILabel()
        nameCodeLabel.translatesAutoresizingMaskIntoConstraints = false
        nameCodeLabel.font = UIFont.boldSystemFont(ofSize: 21)
        return nameCodeLabel
    }()
    
    lazy var timeLabel: UILabel = {
        let timeLabel = UILabel()
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        timeLabel.font = UIFont.boldSystemFont(ofSize: 16)
        timeLabel.textColor = .black
        timeLabel.backgroundColor = .lightGray
        timeLabel.textAlignment = .center
        timeLabel.layer.masksToBounds = true
        timeLabel.layer.cornerRadius = 10
        return timeLabel
    }()
    
    lazy var pointsLabel: UILabel = {
        let pointsLabel = UILabel()
        pointsLabel.translatesAutoresizingMaskIntoConstraints = false
        pointsLabel.font = UIFont.boldSystemFont(ofSize: 20)
        return pointsLabel
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubViews()
        self.configConstraintsInfoDriver()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addSubViews(){
        addSubview(positionLabel)
        addSubview(nameCodeLabel)
        addSubview(timeLabel)
        addSubview(pointsLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            positionLabel.centerXAnchor.constraint(equalTo: leadingAnchor, constant: 22),
            positionLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            nameCodeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            nameCodeLabel.centerYAnchor.constraint(equalTo: centerYAnchor),

            timeLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            timeLabel.centerXAnchor.constraint(equalTo: leadingAnchor, constant: 210),
            timeLabel.widthAnchor.constraint(equalToConstant: 115),
            timeLabel.heightAnchor.constraint(equalToConstant: 20),

            pointsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            pointsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
        ])
    }

}

