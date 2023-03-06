//
//  RacingTableViewScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 06/02/23.
//

import UIKit

class RacingTableViewScreen: UIView {
    
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
        label.textAlignment = .justified
        label.textColor = .lightGray
        label.numberOfLines = 0
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
    


    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addElements()
        setUpConstraints()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(roundLabel)
        addSubview(countryLabel)
        addSubview(descriptionLabel)
        addSubview(dayLabel)
        addSubview(monthLabel)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
        
            roundLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            roundLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),

            
            countryLabel.topAnchor.constraint(equalTo: roundLabel.bottomAnchor, constant: 5),
            countryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),


            descriptionLabel.topAnchor.constraint(equalTo: countryLabel.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -180),
           

            dayLabel.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            dayLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -35),
            

            monthLabel.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 5),
            monthLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -38),
            monthLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 290)
        
        ])
    }
}
