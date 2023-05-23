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
    
    lazy var driversNameLeftLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 23)
        return label
    }()
    
    lazy var leftArrowIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "blackArrow")
        return imageView
    }()
    
    lazy var leftBackgroundSearchLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1).cgColor
        return label
    }()
    
    lazy var leftSearchTextField: UITextField = {
       let searchField = UITextField()
        searchField.translatesAutoresizingMaskIntoConstraints = false
        searchField.layer.backgroundColor = .none
        searchField.textColor = .white
        return searchField
    }()
    
    lazy var leftSearchImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "magnifyingglass")
        image.tintColor = .white
        return image
    }()
    
    lazy var leftNameDriversTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        tableView.register(DuelDriversTableViewCell.self, forCellReuseIdentifier: DuelDriversTableViewCell.identifier)
        return tableView
    }()
    
    lazy var rightDriverButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var driversNameRightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.textAlignment = .center
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 23)
        return label
    }()
    
    lazy var rightArrowIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "blackArrow")
        return imageView
    }()
    
    lazy var rightBackgroundSearchLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1).cgColor
        return label
    }()
    
    lazy var rightSearchTextField: UITextField = {
       let searchField = UITextField()
        searchField.translatesAutoresizingMaskIntoConstraints = false
        searchField.layer.backgroundColor = .none
        searchField.textColor = .white
        return searchField
    }()
    
    lazy var rightSearchImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "magnifyingglass")
        image.tintColor = .white
        return image
    }()
    
    lazy var rightNameDriversTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        tableView.register(DuelDriversTableViewCell.self, forCellReuseIdentifier: DuelDriversTableViewCell.identifier)
        return tableView
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
        
        leftDriverButton.addSubview(driversNameLeftLabel)
        leftDriverButton.addSubview(leftArrowIconImage)
        addSubview(leftBackgroundSearchLabel)
        addSubview(leftSearchTextField)
        addSubview(leftSearchImageView)
        addSubview(leftNameDriversTableView)
        
        rightDriverButton.addSubview(driversNameRightLabel)
        rightDriverButton.addSubview(rightArrowIconImage)
        addSubview(rightBackgroundSearchLabel)
        addSubview(rightSearchTextField)
        addSubview(rightSearchImageView)
        addSubview(rightNameDriversTableView)
        
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
            leftDriverButton.topAnchor.constraint(equalTo: namesBackgroundLabel.topAnchor, constant: 30),
            leftDriverButton.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -30),
            leftDriverButton.leadingAnchor.constraint(equalTo: namesBackgroundLabel.leadingAnchor, constant: 10),
            leftDriverButton.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -3),
            
            driversNameLeftLabel.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: -100),
            driversNameLeftLabel.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -30),
            driversNameLeftLabel.leadingAnchor.constraint(equalTo: namesBackgroundLabel.leadingAnchor, constant: 5),
            driversNameLeftLabel.topAnchor.constraint(equalTo: namesBackgroundLabel.topAnchor, constant: 30),
            driversNameLeftLabel.trailingAnchor.constraint(equalTo: leftArrowIconImage.leadingAnchor, constant: -4),
            
            leftArrowIconImage.trailingAnchor.constraint(equalTo: leftDriverButton.trailingAnchor, constant: -4),
            leftArrowIconImage.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -55),
            leftArrowIconImage.heightAnchor.constraint(equalToConstant: 15),
            leftArrowIconImage.widthAnchor.constraint(equalToConstant: 15),
            
            leftBackgroundSearchLabel.topAnchor.constraint(equalTo: leftDriverButton.bottomAnchor),
            leftBackgroundSearchLabel.centerXAnchor.constraint(equalTo: leftDriverButton.centerXAnchor),
            leftBackgroundSearchLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            leftBackgroundSearchLabel.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10),
            leftBackgroundSearchLabel.heightAnchor.constraint(equalToConstant: 30),
            
            leftSearchImageView.topAnchor.constraint(equalTo: leftBackgroundSearchLabel.topAnchor, constant: 5),
            leftSearchImageView.leadingAnchor.constraint(equalTo: leftBackgroundSearchLabel.leadingAnchor, constant: 5),
            leftSearchImageView.widthAnchor.constraint(equalToConstant: 20),
            leftSearchImageView.heightAnchor.constraint(equalToConstant: 20),
            
            leftSearchTextField.topAnchor.constraint(equalTo: leftBackgroundSearchLabel.topAnchor, constant: 5),
            leftSearchTextField.leadingAnchor.constraint(equalTo: leftSearchImageView.trailingAnchor, constant: 5),
            leftSearchTextField.trailingAnchor.constraint(equalTo: leftBackgroundSearchLabel.trailingAnchor, constant: -5),
            leftSearchTextField.bottomAnchor.constraint(equalTo: leftBackgroundSearchLabel.bottomAnchor, constant: -5),
            
            leftNameDriversTableView.topAnchor.constraint(equalTo: leftBackgroundSearchLabel.bottomAnchor),
            leftNameDriversTableView.centerXAnchor.constraint(equalTo: leftBackgroundSearchLabel.centerXAnchor),
            leftNameDriversTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            leftNameDriversTableView.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10),
            leftNameDriversTableView.heightAnchor.constraint(equalToConstant: 220),
            
            rightDriverButton.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: 100),
            rightDriverButton.topAnchor.constraint(equalTo: namesBackgroundLabel.topAnchor, constant: 30),
            rightDriverButton.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -30),
            rightDriverButton.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            rightDriverButton.trailingAnchor.constraint(equalTo: namesBackgroundLabel.trailingAnchor, constant: -10),
            
            driversNameRightLabel.centerXAnchor.constraint(equalTo: namesBackgroundLabel.centerXAnchor, constant: 100),
            driversNameRightLabel.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -30),
            driversNameRightLabel.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 12),
            driversNameRightLabel.topAnchor.constraint(equalTo: namesBackgroundLabel.topAnchor, constant: 30),
            driversNameRightLabel.trailingAnchor.constraint(equalTo: namesBackgroundLabel.trailingAnchor, constant: -25),
                        
            rightArrowIconImage.trailingAnchor.constraint(equalTo: rightDriverButton.trailingAnchor),
            rightArrowIconImage.bottomAnchor.constraint(equalTo: namesBackgroundLabel.bottomAnchor, constant: -55),
            rightArrowIconImage.heightAnchor.constraint(equalToConstant: 15),
            rightArrowIconImage.widthAnchor.constraint(equalToConstant: 15),
            
            rightBackgroundSearchLabel.topAnchor.constraint(equalTo: rightDriverButton.bottomAnchor),
            rightBackgroundSearchLabel.centerXAnchor.constraint(equalTo: rightDriverButton.centerXAnchor),
            rightBackgroundSearchLabel.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            rightBackgroundSearchLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            rightBackgroundSearchLabel.heightAnchor.constraint(equalToConstant: 30),
            
            rightSearchImageView.topAnchor.constraint(equalTo: rightBackgroundSearchLabel.topAnchor, constant: 5),
            rightSearchImageView.leadingAnchor.constraint(equalTo: rightBackgroundSearchLabel.leadingAnchor, constant: 5),
            rightSearchImageView.widthAnchor.constraint(equalToConstant: 20),
            rightSearchImageView.heightAnchor.constraint(equalToConstant: 20),
            
            rightSearchTextField.topAnchor.constraint(equalTo: rightBackgroundSearchLabel.topAnchor, constant: 5),
            rightSearchTextField.leadingAnchor.constraint(equalTo: rightSearchImageView.trailingAnchor, constant: 5),
            rightSearchTextField.trailingAnchor.constraint(equalTo: rightBackgroundSearchLabel.trailingAnchor, constant: -5),
            rightSearchTextField.bottomAnchor.constraint(equalTo: rightBackgroundSearchLabel.bottomAnchor, constant: -5),
            
            rightNameDriversTableView.topAnchor.constraint(equalTo: rightBackgroundSearchLabel.bottomAnchor),
            rightNameDriversTableView.centerXAnchor.constraint(equalTo: rightBackgroundSearchLabel.centerXAnchor),
            rightNameDriversTableView.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            rightNameDriversTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            rightNameDriversTableView.heightAnchor.constraint(equalToConstant: 220),
            
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
