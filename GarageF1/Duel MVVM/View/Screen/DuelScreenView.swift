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

    
    lazy var driversFirstNameLeft: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 23)
        return label
    }()
    
    lazy var driversLastNameLeft: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
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
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 23)
        return label
    }()
    
    lazy var driversLastNameRight: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 23)
        return label
    }()
    
    lazy var rightArrow: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "seasonIcon")
        return imageView
    }()
    
    lazy var tableInfoLeft: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
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
    
    lazy var tableInfoRight: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
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
        self.addSubview(self.duelTopLabel)
        self.addSubview(self.driversFirstNameLeft)
        self.addSubview(self.driversLastNameLeft)
        self.addSubview(self.driversFirstNameRight)
        self.addSubview(self.driversLastNameRight)
        self.addSubview(self.leftArrow)
        self.addSubview(self.rightArrow)
        self.addSubview(self.backButtonNavigation)
        self.addSubview(self.tableInfoLeft)
        self.addSubview(self.tableInfoRight)
        self.addSubview(self.divisionTablesLabel)
        self.backgroundColor = .white
        constraintsScreen()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableInfoLeft.delegate = delegate
        self.tableInfoLeft.dataSource = dataSource
        self.tableInfoRight.delegate = delegate
        self.tableInfoRight.dataSource = dataSource
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            duelTopLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            duelTopLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            duelTopLabel.topAnchor.constraint(equalTo: self.topAnchor),
            duelTopLabel.heightAnchor.constraint(equalToConstant: 180),
            
            driversFirstNameLeft.centerXAnchor.constraint(equalTo: leftArrow.leadingAnchor, constant: -70),
            driversFirstNameLeft.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -55),

            driversLastNameLeft.centerXAnchor.constraint(equalTo: leftArrow.leadingAnchor, constant: -70),
            driversLastNameLeft.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -30),
            
            leftArrow.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -40),
            leftArrow.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -50),
            leftArrow.heightAnchor.constraint(equalToConstant: 15),
            leftArrow.widthAnchor.constraint(equalToConstant: 15),
            
            driversFirstNameRight.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 90),
            driversFirstNameRight.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -55),

            driversLastNameRight.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 90),
            driversLastNameRight.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -30),
                        
            rightArrow.leadingAnchor.constraint(equalTo: driversLastNameRight.trailingAnchor, constant: 10),
            rightArrow.bottomAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: -50),
            rightArrow.heightAnchor.constraint(equalToConstant: 15),
            rightArrow.widthAnchor.constraint(equalToConstant: 15),
            
            backButtonNavigation.topAnchor.constraint(equalTo: duelTopLabel.topAnchor, constant: 45),
            backButtonNavigation.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButtonNavigation.heightAnchor.constraint(equalToConstant: 20),
            backButtonNavigation.widthAnchor.constraint(equalToConstant: 20),
            
            tableInfoLeft.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableInfoLeft.trailingAnchor.constraint(equalTo: centerXAnchor),
            tableInfoLeft.topAnchor.constraint(equalTo: duelTopLabel.bottomAnchor),
            tableInfoLeft.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -65),
            
            tableInfoRight.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableInfoRight.leadingAnchor.constraint(equalTo: centerXAnchor),
            tableInfoRight.topAnchor.constraint(equalTo: duelTopLabel.bottomAnchor),
            tableInfoRight.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -65),
            
            divisionTablesLabel.topAnchor.constraint(equalTo: duelTopLabel.bottomAnchor, constant: 20),
            divisionTablesLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionTablesLabel.heightAnchor.constraint(equalTo: tableInfoLeft.heightAnchor),
            divisionTablesLabel.widthAnchor.constraint(equalToConstant: 2),
        ])
    }
}
