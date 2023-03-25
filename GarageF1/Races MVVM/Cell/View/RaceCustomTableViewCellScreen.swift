//
//  RacesCustomTableViewCellScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import UIKit

class RaceCustomTableViewCellScreen: UIView {
    
    lazy var roundLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .red
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    lazy var countryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.textColor = .lightGray
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    lazy var dayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    lazy var monthLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 15)
        label.layer.borderColor = UIColor.darkGray.cgColor
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 8
        label.backgroundColor = .lightGray
        return label
    }()
    
    lazy var fowardButton: UIImageView = {
       let fowardButton = UIImageView()
        fowardButton.translatesAutoresizingMaskIntoConstraints = false
        fowardButton.image = UIImage(named: "redFoward")
        return fowardButton
    }()
    
    lazy var divisionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.backgroundColor = UIColor.darkGray.cgColor
        return label
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
        addSubview(roundLabel)
        addSubview(countryLabel)
        addSubview(descriptionLabel)
        addSubview(dayLabel)
        addSubview(monthLabel)
        addSubview(fowardButton)
        addSubview(divisionLabel)
    }
    
    private func configConstraintsInfoDriver(){
        NSLayoutConstraint.activate([
            
            dayLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            dayLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            
            monthLabel.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 4),
            monthLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            monthLabel.widthAnchor.constraint(equalToConstant: 60),
            
            roundLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            roundLabel.leadingAnchor.constraint(equalTo: monthLabel.trailingAnchor, constant: 20),
            
            countryLabel.topAnchor.constraint(equalTo: roundLabel.bottomAnchor, constant: 2),
            countryLabel.leadingAnchor.constraint(equalTo: roundLabel.leadingAnchor),
            
            descriptionLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 4),
            descriptionLabel.leadingAnchor.constraint(equalTo: roundLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            
            fowardButton.widthAnchor.constraint(equalToConstant: 15),
            fowardButton.heightAnchor.constraint(equalToConstant: 20),
            fowardButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            fowardButton.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            
            divisionLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
            divisionLabel.heightAnchor.constraint(equalToConstant: 0.3),
            divisionLabel.leadingAnchor.constraint(equalTo: monthLabel.leadingAnchor),
            divisionLabel.trailingAnchor.constraint(equalTo: fowardButton.leadingAnchor),
            
        ])
    }

}
