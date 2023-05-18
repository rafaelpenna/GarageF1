//
//  DuelScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import Foundation

import UIKit

class DuelScreenView: UIView {
    

    lazy var duelTopRedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var backgroundTopRedLabel: UILabel = {
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
        label.font = UIFont.boldSystemFont(ofSize: 35)
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
    
    lazy var leftDriverButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var driversFirstNameLeftLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 23)
        return label
    }()
    
    lazy var driversLastNameLeftLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 23)
        return label
    }()
    
    lazy var leftArrowIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "blackArrow")
        return imageView
    }()
    
    lazy var rightDriverButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var driversFirstNameRightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 23)
        return label
    }()
    
    lazy var driversLastNameRightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 23)
        return label
    }()
    
    lazy var rightArrowIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "blackArrow")
        return imageView
    }()
    
    lazy var infoTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        tableView.register(DuelBirthDateCustomTableViewCell.self, forCellReuseIdentifier: DuelBirthDateCustomTableViewCell.identifier)
        tableView.register(DuelBirthLocationCustomTableViewCell.self, forCellReuseIdentifier: DuelBirthLocationCustomTableViewCell.identifier)
        tableView.register(DuelChampionshipsWonCustomTableViewCell.self, forCellReuseIdentifier: DuelChampionshipsWonCustomTableViewCell.identifier)
        tableView.register(DuelRacesParticipatedCustomTableViewCell.self, forCellReuseIdentifier: DuelRacesParticipatedCustomTableViewCell.identifier)
        tableView.register(DuelPodiumsEarnedCustomTableViewCell.self, forCellReuseIdentifier: DuelPodiumsEarnedCustomTableViewCell.identifier)
        tableView.register(DuelPointsEarnedCustomTableViewCell.self, forCellReuseIdentifier: DuelPointsEarnedCustomTableViewCell.identifier)
        tableView.register(DuelWinsCustomTableViewCell.self, forCellReuseIdentifier: DuelWinsCustomTableViewCell.identifier)
        return tableView
    }()
    
    lazy var backButtonNavigation: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
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
        addElements()
        backgroundColor()
        constraintsScreen()
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.infoTableView.delegate = delegate
        self.infoTableView.dataSource = dataSource
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(duelTopRedLabel)
        addSubview(backgroundTopRedLabel)
        addSubview(duelTitleLabel)
        addSubview(duelDescriptionLabel)
        addSubview(namesBackgroundLabel)
        addSubview(leftDriverButton)
        addSubview(rightDriverButton)
        
        leftDriverButton.addSubview(driversFirstNameLeftLabel)
        leftDriverButton.addSubview(driversLastNameLeftLabel)
        leftDriverButton.addSubview(leftArrowIconImage)
        
        rightDriverButton.addSubview(driversFirstNameRightLabel)
        rightDriverButton.addSubview(driversLastNameRightLabel)
        rightDriverButton.addSubview(rightArrowIconImage)
        
        addSubview(backButtonNavigation)
        addSubview(infoTableView)
    }
    
    func backgroundColor() {
        backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            duelTopRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            duelTopRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            duelTopRedLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            duelTopRedLabel.heightAnchor.constraint(equalToConstant: 135),
            
            backgroundTopRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopRedLabel.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopRedLabel.heightAnchor.constraint(equalToConstant: 50),
            
            duelTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            duelTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            duelDescriptionLabel.bottomAnchor.constraint(equalTo: duelTopRedLabel.bottomAnchor, constant: -25),
            duelDescriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            duelDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            duelDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            
            namesBackgroundLabel.topAnchor.constraint(equalTo: duelTopRedLabel.bottomAnchor, constant: 10),
            namesBackgroundLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            namesBackgroundLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            namesBackgroundLabel.heightAnchor.constraint(equalToConstant: 120),
            
            leftDriverButton.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: -100),
            leftDriverButton.topAnchor.constraint(equalTo: driversFirstNameLeftLabel.topAnchor),
            leftDriverButton.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -30),
            leftDriverButton.leadingAnchor.constraint(equalTo: driversLastNameLeftLabel.leadingAnchor),
            leftDriverButton.trailingAnchor.constraint(equalTo: leftArrowIconImage.trailingAnchor),
            
            driversFirstNameLeftLabel.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: -100),
            driversFirstNameLeftLabel.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -55),

            driversLastNameLeftLabel.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: -100),
            driversLastNameLeftLabel.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -30),
            
            leftArrowIconImage.centerXAnchor.constraint(equalTo: driversLastNameLeftLabel.trailingAnchor, constant: 8),
            leftArrowIconImage.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -55),
            leftArrowIconImage.heightAnchor.constraint(equalToConstant: 15),
            leftArrowIconImage.widthAnchor.constraint(equalToConstant: 15),
            
            rightDriverButton.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: 80),
            rightDriverButton.topAnchor.constraint(equalTo: driversFirstNameRightLabel.topAnchor),
            rightDriverButton.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -30),
            rightDriverButton.leadingAnchor.constraint(equalTo: driversLastNameRightLabel.leadingAnchor),
            rightDriverButton.trailingAnchor.constraint(equalTo: rightArrowIconImage.trailingAnchor),
            
            driversFirstNameRightLabel.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: 80),
            driversFirstNameRightLabel.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -55),

            driversLastNameRightLabel.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: 80),
            driversLastNameRightLabel.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -30),
                        
            rightArrowIconImage.leadingAnchor.constraint(equalTo: driversLastNameRightLabel.trailingAnchor, constant: 12),
            rightArrowIconImage.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -55),
            rightArrowIconImage.heightAnchor.constraint(equalToConstant: 15),
            rightArrowIconImage.widthAnchor.constraint(equalToConstant: 15),
            
            backButtonNavigation.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            backButtonNavigation.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButtonNavigation.heightAnchor.constraint(equalToConstant: 20),
            backButtonNavigation.widthAnchor.constraint(equalToConstant: 15),
            
            infoTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            infoTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            infoTableView.topAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: 10),
            infoTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
