//
//  DuelScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import Foundation

import UIKit

class DuelScreenView: UIView {
    
    lazy var duelTopRedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var backgroundTopRedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
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
    
    lazy var nameLeftBackgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        return view
    }()
    
    lazy var leftDriverButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var driversNameLeftLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var leftArrowIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "blackArrow")
        return imageView
    }()
    
    lazy var leftBackgroundSearchView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1).cgColor
        return view
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
    
    lazy var nameRightBackgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        view.layer.cornerRadius = 10
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 10
        return view
    }()
    
    lazy var rightDriverButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var driversNameRightLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var rightArrowIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "blackArrow")
        return imageView
    }()
    
    lazy var rightBackgroundSearchView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1).cgColor
        return view
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
        tableView.register(DuelSeasonsOnTop3CustomTableViewCell.self, forCellReuseIdentifier: DuelSeasonsOnTop3CustomTableViewCell.identifier)
        tableView.register(DuelSeasonsParticipatedCustomTableViewCell.self, forCellReuseIdentifier: DuelSeasonsParticipatedCustomTableViewCell.identifier)
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
    
    lazy var divisionTablesView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var backgroundView: UIView = {
       let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .none
        return background
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        backgroundColor()
        constraintsScreen()
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        infoTableView.delegate = delegate
        infoTableView.dataSource = dataSource
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(duelTopRedView)
        addSubview(backgroundTopRedView)
        addSubview(duelTitleLabel)
        addSubview(duelDescriptionLabel)
        addSubview(nameRightBackgroundView)
        addSubview(nameLeftBackgroundView)
        addSubview(leftDriverButton)
        addSubview(rightDriverButton)
        
        leftDriverButton.addSubview(driversNameLeftLabel)
        addSubview(leftBackgroundSearchView)
        addSubview(leftSearchTextField)
        addSubview(leftSearchImageView)
        addSubview(leftNameDriversTableView)
        
        rightDriverButton.addSubview(driversNameRightLabel)
        addSubview(rightBackgroundSearchView)
        addSubview(rightSearchTextField)
        addSubview(rightSearchImageView)
        addSubview(rightNameDriversTableView)
        
        addSubview(backButtonNavigation)
        addSubview(infoTableView)
        addSubview(divisionTablesView)
    }
    
    func backgroundColor() {
        backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            duelTopRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            duelTopRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            duelTopRedView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            duelTopRedView.heightAnchor.constraint(equalToConstant: 135),
            
            backgroundTopRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopRedView.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopRedView.heightAnchor.constraint(equalToConstant: 80),
            
            duelTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            duelTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            duelDescriptionLabel.bottomAnchor.constraint(equalTo: duelTopRedView.bottomAnchor, constant: -25),
            duelDescriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            duelDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            duelDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            
            nameLeftBackgroundView.topAnchor.constraint(equalTo: duelTopRedView.bottomAnchor, constant: 20),
            nameLeftBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            nameLeftBackgroundView.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            nameLeftBackgroundView.heightAnchor.constraint(equalToConstant: 90),
            
            nameRightBackgroundView.topAnchor.constraint(equalTo: duelTopRedView.bottomAnchor, constant: 20),
            nameRightBackgroundView.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 20),
            nameRightBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            nameRightBackgroundView.heightAnchor.constraint(equalToConstant: 90),
            
            //MARK: - Left Button Driver Constraints
            
            leftDriverButton.centerXAnchor.constraint(equalTo: nameLeftBackgroundView.centerXAnchor),
            leftDriverButton.topAnchor.constraint(equalTo: nameLeftBackgroundView.topAnchor),
            leftDriverButton.bottomAnchor.constraint(equalTo: nameLeftBackgroundView.bottomAnchor),
            leftDriverButton.leadingAnchor.constraint(equalTo: nameLeftBackgroundView.leadingAnchor),
            leftDriverButton.trailingAnchor.constraint(equalTo: nameLeftBackgroundView.trailingAnchor),
            
            driversNameLeftLabel.centerXAnchor.constraint(equalTo: nameLeftBackgroundView.centerXAnchor),
            driversNameLeftLabel.bottomAnchor.constraint(equalTo: nameLeftBackgroundView.bottomAnchor, constant: -20),
            driversNameLeftLabel.leadingAnchor.constraint(equalTo: nameLeftBackgroundView.leadingAnchor, constant: 10),
            driversNameLeftLabel.topAnchor.constraint(equalTo: nameLeftBackgroundView.topAnchor, constant: 20),
            driversNameLeftLabel.trailingAnchor.constraint(equalTo: nameLeftBackgroundView.trailingAnchor, constant: -10),
            
            leftBackgroundSearchView.topAnchor.constraint(equalTo: leftDriverButton.bottomAnchor),
            leftBackgroundSearchView.centerXAnchor.constraint(equalTo: leftDriverButton.centerXAnchor),
            leftBackgroundSearchView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            leftBackgroundSearchView.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10),
            leftBackgroundSearchView.heightAnchor.constraint(equalToConstant: 30),
            
            leftSearchImageView.topAnchor.constraint(equalTo: leftBackgroundSearchView.topAnchor, constant: 5),
            leftSearchImageView.leadingAnchor.constraint(equalTo: leftBackgroundSearchView.leadingAnchor, constant: 5),
            leftSearchImageView.widthAnchor.constraint(equalToConstant: 20),
            leftSearchImageView.heightAnchor.constraint(equalToConstant: 20),
            
            leftSearchTextField.topAnchor.constraint(equalTo: leftBackgroundSearchView.topAnchor, constant: 5),
            leftSearchTextField.leadingAnchor.constraint(equalTo: leftSearchImageView.trailingAnchor, constant: 5),
            leftSearchTextField.trailingAnchor.constraint(equalTo: leftBackgroundSearchView.trailingAnchor, constant: -5),
            leftSearchTextField.bottomAnchor.constraint(equalTo: leftBackgroundSearchView.bottomAnchor, constant: -5),
            
            leftNameDriversTableView.topAnchor.constraint(equalTo: leftBackgroundSearchView.bottomAnchor),
            leftNameDriversTableView.centerXAnchor.constraint(equalTo: leftBackgroundSearchView.centerXAnchor),
            leftNameDriversTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            leftNameDriversTableView.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10),
            leftNameDriversTableView.heightAnchor.constraint(equalToConstant: 220),
            
            //MARK: - Right Button Driver Constraints
            
            rightDriverButton.centerXAnchor.constraint(equalTo: nameRightBackgroundView.centerXAnchor),
            rightDriverButton.topAnchor.constraint(equalTo: nameRightBackgroundView.topAnchor),
            rightDriverButton.bottomAnchor.constraint(equalTo: nameRightBackgroundView.bottomAnchor),
            rightDriverButton.leadingAnchor.constraint(equalTo: nameRightBackgroundView.leadingAnchor),
            rightDriverButton.trailingAnchor.constraint(equalTo: nameRightBackgroundView.trailingAnchor),
            
            driversNameRightLabel.centerXAnchor.constraint(equalTo: nameRightBackgroundView.centerXAnchor),
            driversNameRightLabel.bottomAnchor.constraint(equalTo: nameRightBackgroundView.bottomAnchor, constant: -20),
            driversNameRightLabel.leadingAnchor.constraint(equalTo: nameRightBackgroundView.leadingAnchor, constant: 10),
            driversNameRightLabel.topAnchor.constraint(equalTo: nameRightBackgroundView.topAnchor, constant: 20),
            driversNameRightLabel.trailingAnchor.constraint(equalTo: nameRightBackgroundView.trailingAnchor, constant: -10),
                                   
            rightBackgroundSearchView.topAnchor.constraint(equalTo: rightDriverButton.bottomAnchor),
            rightBackgroundSearchView.centerXAnchor.constraint(equalTo: rightDriverButton.centerXAnchor),
            rightBackgroundSearchView.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            rightBackgroundSearchView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            rightBackgroundSearchView.heightAnchor.constraint(equalToConstant: 30),
            
            rightSearchImageView.topAnchor.constraint(equalTo: rightBackgroundSearchView.topAnchor, constant: 5),
            rightSearchImageView.leadingAnchor.constraint(equalTo: rightBackgroundSearchView.leadingAnchor, constant: 5),
            rightSearchImageView.widthAnchor.constraint(equalToConstant: 20),
            rightSearchImageView.heightAnchor.constraint(equalToConstant: 20),
            
            rightSearchTextField.topAnchor.constraint(equalTo: rightBackgroundSearchView.topAnchor, constant: 5),
            rightSearchTextField.leadingAnchor.constraint(equalTo: rightSearchImageView.trailingAnchor, constant: 5),
            rightSearchTextField.trailingAnchor.constraint(equalTo: rightBackgroundSearchView.trailingAnchor, constant: -5),
            rightSearchTextField.bottomAnchor.constraint(equalTo: rightBackgroundSearchView.bottomAnchor, constant: -5),
            
            rightNameDriversTableView.topAnchor.constraint(equalTo: rightBackgroundSearchView.bottomAnchor),
            rightNameDriversTableView.centerXAnchor.constraint(equalTo: rightBackgroundSearchView.centerXAnchor),
            rightNameDriversTableView.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            rightNameDriversTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            rightNameDriversTableView.heightAnchor.constraint(equalToConstant: 220),
            
            backButtonNavigation.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            backButtonNavigation.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButtonNavigation.heightAnchor.constraint(equalToConstant: 20),
            backButtonNavigation.widthAnchor.constraint(equalToConstant: 15),
            
            infoTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            infoTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            infoTableView.topAnchor.constraint(equalTo: nameRightBackgroundView.bottomAnchor, constant: 20),
            infoTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            divisionTablesView.topAnchor.constraint(equalTo: nameRightBackgroundView.topAnchor, constant: 15),
            divisionTablesView.bottomAnchor.constraint(equalTo: nameRightBackgroundView.bottomAnchor, constant: -10),
            divisionTablesView.centerXAnchor.constraint(equalTo: centerXAnchor),
            divisionTablesView.widthAnchor.constraint(equalToConstant: 2),
        ])
    }
}
