//
//  WelcomeUserCustomTableView.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 15/03/23.
//

import UIKit

class WelcomeUserCustomTableView: UITableViewCell {
    
    static let identifier: String = "WelcomeUserCustomTableView"
    
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textColor = .black
        
        return label
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()
    
    public func configure() {
        addSubViews()
        setUpConstraints()
   
    }
    
    private func addSubViews(){
        addSubview(welcomeLabel)
        addSubview(userNameLabel)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            userNameLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 5),
            userNameLabel.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            
        ])
    }
}
