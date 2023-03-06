//
//  HistoryScreenView.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import UIKit

class HistoryScreenView: UIView {

    lazy var topRedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var historyTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "História"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var seasonYearButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Temporada 2022", for: .normal)
        button.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return button
    }()
    
    lazy var seasonYearIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "seasonIcon")
        return imageView
    }()
    
    lazy var driversButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Pilotos", for: .normal)
        button.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var teamsButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Equipes", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var tableViewDrivers: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(HistoryDriversTableViewCell.self, forCellReuseIdentifier: HistoryDriversTableViewCell.identifier)
        return tableView
    }()
    
    lazy var tableViewTeams: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(HistoryTeamsTableViewCell.self, forCellReuseIdentifier: HistoryTeamsTableViewCell.identifier)
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        backgroundColor()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableViewDrivers.delegate = delegate
        self.tableViewDrivers.dataSource = dataSource
        self.tableViewTeams.delegate = delegate
        self.tableViewTeams.dataSource = dataSource
    }
    
    private func addElements() {
        addSubview(topRedLabel)
        addSubview(historyTitleLabel)
        addSubview(seasonYearButton)
        seasonYearButton.addSubview(seasonYearIcon)
        addSubview(driversButton)
        addSubview(teamsButton)

        addSubview(tableViewDrivers)
        addSubview(tableViewTeams)
        
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1.0)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabel.topAnchor.constraint(equalTo: topAnchor),
            topRedLabel.heightAnchor.constraint(equalToConstant: 135),
            
            historyTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            historyTitleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15),
            
            seasonYearButton.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            seasonYearButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -25),
            
            seasonYearIcon.heightAnchor.constraint(equalToConstant: 10),
            seasonYearIcon.widthAnchor.constraint(equalToConstant: 10),
            seasonYearIcon.leadingAnchor.constraint(equalTo: seasonYearButton.trailingAnchor, constant: 8),
            seasonYearIcon.topAnchor.constraint(equalTo: seasonYearButton.topAnchor, constant: 15),
            
            driversButton.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -10),
            driversButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 60),
            
            teamsButton.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -10),
            teamsButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -60),
            
            tableViewDrivers.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            tableViewDrivers.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableViewDrivers.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableViewDrivers.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            tableViewTeams.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            tableViewTeams.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableViewTeams.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableViewTeams.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        ])
    }
}

