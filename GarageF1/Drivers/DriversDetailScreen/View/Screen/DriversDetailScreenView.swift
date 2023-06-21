//
//  DriversDetailScreenView.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import UIKit

class DriversDetailScreenView: UIView {
    
    let driversDetailViewController: DriversViewController = DriversViewController()

    lazy var topRedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var backgroundTopRedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        return backButton
    }()
    
    lazy var firstNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    lazy var lastNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var permanentNumber: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    lazy var driverPhotoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var photoDivider: UIView = {
        let image = UIView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.backgroundColor = .black
        return image
    }()
    
    lazy var infoDriversTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.cornerRadius = 10
        tableView.backgroundColor = UIColor(red: 157/255, green: 157/255, blue: 157/255, alpha: 1)
        tableView.register(BirthDateCustomTableViewCellScreen.self, forCellReuseIdentifier: BirthDateCustomTableViewCellScreen.identifier)
        tableView.register(BirthLocationCustomTableViewCellScreen.self, forCellReuseIdentifier: BirthLocationCustomTableViewCellScreen.identifier)
        tableView.register(ChampionshipsWinCustomTableViewCellScreen.self, forCellReuseIdentifier: ChampionshipsWinCustomTableViewCellScreen.identifier)
        tableView.register(RacesCustomTableViewCellScreen.self, forCellReuseIdentifier: RacesCustomTableViewCellScreen.identifier)
        tableView.register(PodiumsCustomTableViewCellScreen.self, forCellReuseIdentifier: PodiumsCustomTableViewCellScreen.identifier)
        tableView.register(PointsCustomTableViewCellScreen.self, forCellReuseIdentifier: PointsCustomTableViewCellScreen.identifier)
        tableView.register(BestRacePositionCustomTableViewCellScreen.self, forCellReuseIdentifier: BestRacePositionCustomTableViewCellScreen.identifier)
        tableView.register(BestGridPositionCustomTableViewCellScreen.self, forCellReuseIdentifier: BestGridPositionCustomTableViewCellScreen.identifier)
        return tableView
    }()
    
    lazy var backgroundView: UIView = {
       let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .none
        return background
    }()
    
    lazy var flagNationality: UIImage = {
       let image = UIImage()
        return image
    }()
    
    lazy var constructorLogo: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        constraintsScreen()
        backgroundColor()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(topRedView)
        addSubview(backgroundTopRedView)
        addSubview(backButton)
        addSubview(firstNameLabel)
        addSubview(lastNameLabel)
        addSubview(driverPhotoImage)
        addSubview(permanentNumber)
        addSubview(constructorLogo)
        addSubview(infoDriversTableView)
        addSubview(photoDivider)
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        infoDriversTableView.delegate = delegate
        infoDriversTableView.dataSource = dataSource
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            topRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topRedView.heightAnchor.constraint(equalToConstant: 135),
            
            backgroundTopRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopRedView.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopRedView.bottomAnchor.constraint(equalTo: centerYAnchor, constant: 50),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            firstNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            firstNameLabel.bottomAnchor.constraint(equalTo: backgroundTopRedView.bottomAnchor, constant: -40),
            
            lastNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            lastNameLabel.bottomAnchor.constraint(equalTo: backgroundTopRedView.bottomAnchor, constant: -15),
            
            permanentNumber.topAnchor.constraint(equalTo: driverPhotoImage.topAnchor),
            permanentNumber.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            
            driverPhotoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            driverPhotoImage.bottomAnchor.constraint(equalTo: firstNameLabel.topAnchor, constant: -10),
            driverPhotoImage.heightAnchor.constraint(equalToConstant: 250),
            driverPhotoImage.widthAnchor.constraint(equalToConstant: 250),
            
            photoDivider.topAnchor.constraint(equalTo: driverPhotoImage.bottomAnchor),
            photoDivider.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            photoDivider.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            photoDivider.heightAnchor.constraint(equalToConstant: 10),
            
            constructorLogo.topAnchor.constraint(equalTo: driverPhotoImage.topAnchor),
            constructorLogo.heightAnchor.constraint(equalToConstant: 80),
            constructorLogo.widthAnchor.constraint(equalToConstant: 160),
            constructorLogo.leadingAnchor.constraint(equalTo: backgroundTopRedView.leadingAnchor, constant: -20),
            
            infoDriversTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            infoDriversTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            infoDriversTableView.topAnchor.constraint(equalTo: backgroundTopRedView.bottomAnchor, constant: 25),
            infoDriversTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
        ])
    }
}

