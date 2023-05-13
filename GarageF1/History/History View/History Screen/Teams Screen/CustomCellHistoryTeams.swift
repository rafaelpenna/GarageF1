//
//  CustomCellHistoryTeams.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//


import UIKit

class CustomCellHistoryTeams: UIView {
    
    lazy var positionLabel: UILabel = {
        let positionLabel = UILabel()
        positionLabel.translatesAutoresizingMaskIntoConstraints = false
        positionLabel.font = UIFont.boldSystemFont(ofSize: 25)
        return positionLabel
    }()
    
    lazy var teamLabel: UILabel = {
        let teamLabel = UILabel()
        teamLabel.translatesAutoresizingMaskIntoConstraints = false
        teamLabel.font = UIFont.boldSystemFont(ofSize: 22)
        return teamLabel
    }()
    
    lazy var pointsLabel: UILabel = {
        let pointsLabel = UILabel()
        pointsLabel.translatesAutoresizingMaskIntoConstraints = false
        pointsLabel.font = UIFont.boldSystemFont(ofSize: 22)
        return pointsLabel
    }()
    
    lazy var ptsLabel: UILabel = {
        let pts = UILabel()
        pts.translatesAutoresizingMaskIntoConstraints = false
        pts.text = "pts"
        pts.textColor = .lightGray
        pts.font = UIFont.systemFont(ofSize: 18)
        return pts
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
        addSubview(teamLabel)
        addSubview(pointsLabel)
        addSubview(ptsLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            positionLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            positionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),

            teamLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            teamLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),

            pointsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 23),
            pointsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -38),
            pointsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            ptsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            ptsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            ptsLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
        ])
    }
}

