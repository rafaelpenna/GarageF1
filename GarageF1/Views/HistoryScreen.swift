//
//  HistoryScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

class HistoryScreen: UIView {
    
    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var historyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "História"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var seasonButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Temporada 2022", for: .normal)
        button.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return button
    }()
    
    lazy var seasonIcon: UIImageView = {
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
        tableView.tag = 1
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(HistoryDriversTableViewCell.self, forCellReuseIdentifier: HistoryDriversTableViewCell.identifier)
        return tableView
    }()
    
    lazy var tableViewTeams: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.tag = 2
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(HistoryTeamsTableViewCell.self, forCellReuseIdentifier: HistoryTeamsTableViewCell.identifier)
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1)
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
        addSubview(topLabel)
        addSubview(historyLabel)
        addSubview(seasonButton)
        seasonButton.addSubview(seasonIcon)
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
            
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 115),
            
            historyLabel.topAnchor.constraint(equalTo: topAnchor, constant: 35),
            historyLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            seasonButton.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            seasonButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            
            seasonIcon.heightAnchor.constraint(equalToConstant: 10),
            seasonIcon.widthAnchor.constraint(equalToConstant: 10),
            seasonIcon.leadingAnchor.constraint(equalTo: seasonButton.trailingAnchor, constant: 8),
            seasonIcon.topAnchor.constraint(equalTo: seasonButton.topAnchor, constant: 15),
            
            driversButton.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -10),
            driversButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            
            teamsButton.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -10),
            teamsButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            
            tableViewDrivers.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            tableViewDrivers.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableViewDrivers.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableViewDrivers.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            tableViewTeams.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            tableViewTeams.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableViewTeams.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableViewTeams.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        ])
    }
}
