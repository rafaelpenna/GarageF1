//
//  DriversDetailScreenView.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import UIKit

class DriversDetailScreenView: UIView {

    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "seta"), for: .normal)
        return backButton
    }()
    
    lazy var firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        label.text = "Charles"
        return label
    }()
    
    lazy var lastName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Leclerc"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var driverPhoto: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "Leclerc1")
        return image
    }()
    
    lazy var tableViewInfoDrivers: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(BirthDateCustomTableViewCellScreen.self, forCellReuseIdentifier: "BirthDateCustomTableViewCellScreen")
        tableView.register(BirthLocationCustomTableViewCellScreen.self, forCellReuseIdentifier: "BirthLocationCustomTableViewCellScreen")
        tableView.register(ChampionshipsWinCustomTableViewCellScreen.self, forCellReuseIdentifier: "ChampionshipsWinCustomTableViewCellScreen")
        tableView.register(RacesCustomTableViewCellScreen.self, forCellReuseIdentifier: "RacesCustomTableViewCellScreen")
        tableView.register(PodiumsCustomTableViewCellScreen.self, forCellReuseIdentifier: "PodiumsCustomTableViewCellScreen")
        tableView.register(PointsCustomTableViewCellScreen.self, forCellReuseIdentifier: "PointsCustomTableViewCellScreen")
        tableView.register(BestRacePositionCustomTableViewCellScreen.self, forCellReuseIdentifier: "BestRacePositionCustomTableViewCellScreen")
        tableView.register(BestGridPositionCustomTableViewCellScreen.self, forCellReuseIdentifier: "BestGridPositionCustomTableViewCellScreen")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.topLabel)
        self.addSubview(self.backButton)
        self.addSubview(self.firstName)
        self.addSubview(self.lastName)
        self.addSubview(self.driverPhoto)
        self.addSubview(self.tableViewInfoDrivers)
        backgroundColor = .white
        constraintsScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableViewInfoDrivers.delegate = delegate
        self.tableViewInfoDrivers.dataSource = dataSource
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            topLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: self.topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 160),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 20),
            
            
            firstName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            firstName.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -40),
            
            lastName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lastName.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -15),
            
            driverPhoto.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            driverPhoto.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor),
            driverPhoto.heightAnchor.constraint(equalToConstant: 100),
            driverPhoto.widthAnchor.constraint(equalToConstant: 100),
            
            tableViewInfoDrivers.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            tableViewInfoDrivers.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tableViewInfoDrivers.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            tableViewInfoDrivers.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
        ])
    }
}
