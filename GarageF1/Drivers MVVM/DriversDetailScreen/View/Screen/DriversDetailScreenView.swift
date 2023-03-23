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
    
    lazy var topRedLabelBackground: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        return backButton
    }()
    
    lazy var firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    lazy var lastName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var driverPhoto: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var tableViewInfoDrivers: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        tableView.backgroundView = UIImageView(image: UIImage(named: "backgroundFlag"))
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
        addSubview(topLabel)
        addSubview(topRedLabelBackground)
        addSubview(backButton)
        addSubview(firstName)
        addSubview(lastName)
        addSubview(driverPhoto)
        addSubview(tableViewInfoDrivers)
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
            
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 135),
            
            topRedLabelBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabelBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabelBackground.topAnchor.constraint(equalTo: topAnchor),
            topRedLabelBackground.heightAnchor.constraint(equalToConstant: 50),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            
            firstName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            firstName.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -40),
            
            lastName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lastName.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -15),
            
            driverPhoto.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            driverPhoto.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor),
            driverPhoto.heightAnchor.constraint(equalToConstant: 120),
            driverPhoto.widthAnchor.constraint(equalToConstant: 120),
            
            tableViewInfoDrivers.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableViewInfoDrivers.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableViewInfoDrivers.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            tableViewInfoDrivers.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
        ])
    }
}
