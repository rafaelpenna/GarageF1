//
//  DuelScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import Foundation

import UIKit

class DuelScreenView: UIView {
    

    lazy var duelTopLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var topRedLabelBackground: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var duelTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Duelo"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var duelDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Selecione os pilotos que você deseja comparar:"
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var namesBackgroundLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.borderColor = .init(red: 242/255, green: 24/255, blue: 2/255, alpha: 1)
        label.layer.borderWidth = 2
        label.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        return label
    }()

    
    lazy var driversFirstNameLeft: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 23)
        return label
    }()
    
    lazy var driversLastNameLeft: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 23)
        return label
    }()
    
    lazy var leftArrow: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "seasonIcon")
        return imageView
    }()
    
    lazy var driversFirstNameRight: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 23)
        return label
    }()
    
    lazy var driversLastNameRight: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 23)
        return label
    }()
    
    lazy var rightArrow: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "seasonIcon")
        return imageView
    }()
    
    lazy var tableInfo: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.register(DuelBirthDateCustomTableViewCell.self, forCellReuseIdentifier: "DuelBirthDateCustomTableViewCell")
        tableView.register(DuelBirthLocationCustomTableViewCell.self, forCellReuseIdentifier: "DuelBirthLocationCustomTableViewCell")
        tableView.register(DuelChampionshipsWonCustomTableViewCell.self, forCellReuseIdentifier: "DuelChampionshipsWonCustomTableViewCell")
        tableView.register(DuelRacesParticipatedCustomTableViewCell.self, forCellReuseIdentifier: "DuelRacesParticipatedCustomTableViewCell")
        tableView.register(DuelPodiumsEarnedCustomTableViewCell.self, forCellReuseIdentifier: "DuelPodiumsEarnedCustomTableViewCell")
        tableView.register(DuelPointsEarnedCustomTableViewCell.self, forCellReuseIdentifier: "DuelPointsEarnedCustomTableViewCell")
        tableView.register(DuelWinsCustomTableViewCell.self, forCellReuseIdentifier: "DuelWinsCustomTableViewCell")
        tableView.reloadData()
        return tableView
    }()
    
    lazy var backButtonNavigation: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "seta"), for: .normal)
        return backButton
    }()
    
    lazy var divisionTablesLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(duelTopLabel)
        addSubview(topRedLabelBackground)
        addSubview(duelTitleLabel)
        addSubview(duelDescriptionLabel)
        addSubview(namesBackgroundLabel)
        addSubview(driversFirstNameLeft)
        addSubview(driversLastNameLeft)
        addSubview(driversFirstNameRight)
        addSubview(driversLastNameRight)
        addSubview(leftArrow)
        addSubview(rightArrow)
        addSubview(backButtonNavigation)
        addSubview(tableInfo)
        backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        constraintsScreen()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableInfo.delegate = delegate
        self.tableInfo.dataSource = dataSource
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            duelTopLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            duelTopLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            duelTopLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            duelTopLabel.heightAnchor.constraint(equalToConstant: 135),
            
            topRedLabelBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabelBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabelBackground.topAnchor.constraint(equalTo: topAnchor),
            topRedLabelBackground.heightAnchor.constraint(equalToConstant: 50),
            
            duelTitleLabel.topAnchor.constraint(equalTo: duelTopLabel.topAnchor),
            duelTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            duelDescriptionLabel.centerYAnchor.constraint(equalTo: duelTopLabel.centerYAnchor),
            duelDescriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            namesBackgroundLabel.topAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: 10),
            namesBackgroundLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            namesBackgroundLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            namesBackgroundLabel.heightAnchor.constraint(equalToConstant: 120),
            
            driversFirstNameLeft.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: -50),
            driversFirstNameLeft.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -55),

            driversLastNameLeft.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: 50),
            driversLastNameLeft.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -30),
            
            leftArrow.centerXAnchor.constraint(equalTo: driversLastNameLeft.trailingAnchor, constant: 10),
            leftArrow.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -50),
            leftArrow.heightAnchor.constraint(equalToConstant: 15),
            leftArrow.widthAnchor.constraint(equalToConstant: 15),
            
            driversFirstNameRight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            driversFirstNameRight.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -55),

            driversLastNameRight.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            driversLastNameRight.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -30),
                        
            rightArrow.leadingAnchor.constraint(equalTo: driversLastNameRight.trailingAnchor, constant: 10),
            rightArrow.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -50),
            rightArrow.heightAnchor.constraint(equalToConstant: 15),
            rightArrow.widthAnchor.constraint(equalToConstant: 15),
            
            backButtonNavigation.topAnchor.constraint(equalTo: duelTopLabel.topAnchor, constant: 45),
            backButtonNavigation.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButtonNavigation.heightAnchor.constraint(equalToConstant: 20),
            backButtonNavigation.widthAnchor.constraint(equalToConstant: 20),
            
            tableInfo.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableInfo.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableInfo.topAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: 15),
            tableInfo.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -65),
        ])
    }
}
