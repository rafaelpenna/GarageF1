//
//  SecondDriverScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

protocol secondDriverScreenProtocol: AnyObject {
    func tappedBackButton()
}

class SecondDriverScreen: UIView {

    private weak var delegate: secondDriverScreenProtocol?
    func delegate(delegate: secondDriverScreenProtocol?) {
        self.delegate = delegate
    }

    lazy var topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var topRedViewBackground: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        backButton.addTarget(self, action: #selector(tappedBackButton), for: .touchUpInside)
        return backButton
    }()
    
    lazy var firstName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Charles"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
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
        image.image = UIImage(named: "charles")
        return image
    }()
    
    lazy var tableViewInfoDrivers: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.allowsSelection = false
        tableView.register(TableViewBirthDateCellScreen.self, forCellReuseIdentifier: TableViewBirthDateCellScreen.identifier)
        tableView.register(TableViewBirthLocationCellScreen.self, forCellReuseIdentifier: TableViewBirthLocationCellScreen.identifier)
        tableView.register(TableViewChampionshipsWinCellScreen.self, forCellReuseIdentifier: TableViewChampionshipsWinCellScreen.identifier)
        tableView.register(TableViewRacesCustomTCellScreen.self, forCellReuseIdentifier: TableViewRacesCustomTCellScreen.identifier)
        tableView.register(TableViewPodiumsCustomCellScreen.self, forCellReuseIdentifier: TableViewPodiumsCustomCellScreen.identifier)
        tableView.register(TableViewPointsCustomCellScreen.self, forCellReuseIdentifier: TableViewPointsCustomCellScreen.identifier)
        tableView.register(TableViewBestRacePositionCustomCellScreen.self, forCellReuseIdentifier: TableViewBestRacePositionCustomCellScreen.identifier)
        tableView.register(TableViewBestGridPositionCustomCellScreen.self, forCellReuseIdentifier: TableViewBestGridPositionCustomCellScreen.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(topRedViewBackground)
        addSubview(topView)
        addSubview(backButton)
        addSubview(firstName)
        addSubview(lastName)
        addSubview(driverPhoto)
        addSubview(tableViewInfoDrivers)
        backgroundColor = .white
        constraintsScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func tappedBackButton() {
        delegate?.tappedBackButton()
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableViewInfoDrivers.delegate = delegate
        self.tableViewInfoDrivers.dataSource = dataSource
    }

    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            topView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            topView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topView.heightAnchor.constraint(equalToConstant: 135),
            
            topRedViewBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedViewBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedViewBackground.topAnchor.constraint(equalTo: topAnchor),
            topRedViewBackground.heightAnchor.constraint(equalToConstant: 80),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            
            firstName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            firstName.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -40),
            
            lastName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lastName.bottomAnchor.constraint(equalTo: topView.bottomAnchor, constant: -15),
            
            driverPhoto.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            driverPhoto.bottomAnchor.constraint(equalTo: topView.bottomAnchor),
            driverPhoto.heightAnchor.constraint(equalToConstant: 120),
            driverPhoto.widthAnchor.constraint(equalToConstant: 120),
            
            tableViewInfoDrivers.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableViewInfoDrivers.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableViewInfoDrivers.topAnchor.constraint(equalTo: topView.bottomAnchor),
            tableViewInfoDrivers.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor, constant: -5),
            
            
        ])
    }
}
