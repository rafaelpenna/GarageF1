//
//  CustomStandingsTableViewCell.swift
//  GarageF1
//
//  Created by Rafael Penna on 03/02/23.
//

import UIKit

class CustomStandingsTableViewScreen: UIView {
    
    lazy var positionLabel: UILabel = {
        let positionLabel = UILabel()
        positionLabel.translatesAutoresizingMaskIntoConstraints = false
        positionLabel.font = UIFont.boldSystemFont(ofSize: 24)
        return positionLabel
    }()
    
    lazy var colorLabel: UILabel = {
        let colorLabel = UILabel()
        colorLabel.translatesAutoresizingMaskIntoConstraints = false
//        colorLabel.backgroundColor = colorCondition
        return colorLabel
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
//        addSubview(colorLabel)
        addSubview(nameCodeLabel)
        addSubview(timeLabel)
        addSubview(pointsLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            positionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            positionLabel.centerXAnchor.constraint(equalTo: leadingAnchor, constant: 22),

//            colorLabel.topAnchor.constraint(equalTo: topAnchor),
//            colorLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
//            colorLabel.widthAnchor.constraint(equalToConstant: 1.5),
//            colorLabel.heightAnchor.constraint(equalToConstant: 20),
            
            nameCodeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            nameCodeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),

            timeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            timeLabel.centerXAnchor.constraint(equalTo: leadingAnchor, constant: 210),
            timeLabel.widthAnchor.constraint(equalToConstant: 115),
            timeLabel.heightAnchor.constraint(equalToConstant: 20),

            pointsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            pointsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -38),
            
        ])
    }

}
