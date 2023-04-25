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
    
    lazy var topRedLabelBackground: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var historyTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Histórico"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var historyDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Seleciona a temporada:"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var seasonYearButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var seasonYearTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "2022"
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
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
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var teamsButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Equipes", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var tableViewDrivers: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1).cgColor
        tableView.register(HistoryDriversTableViewCell.self, forCellReuseIdentifier: HistoryDriversTableViewCell.identifier)
        return tableView
    }()
    
    lazy var tableViewTeams: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1).cgColor
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
    
    private func addElements() {
        addSubview(topRedLabel)
        addSubview(topRedLabelBackground)
        addSubview(historyTitleLabel)
        addSubview(historyDescriptionLabel)
        addSubview(seasonYearButton)
        seasonYearButton.addSubview(seasonYearTitle)
        seasonYearButton.addSubview(seasonYearIcon)
        addSubview(driversButton)
        addSubview(teamsButton)

        addSubview(tableViewDrivers)
        addSubview(tableViewTeams)
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableViewDrivers.delegate = delegate
        self.tableViewDrivers.dataSource = dataSource
        self.tableViewTeams.delegate = delegate
        self.tableViewTeams.dataSource = dataSource
    }
        
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topRedLabel.heightAnchor.constraint(equalToConstant: 135),
            
            topRedLabelBackground.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabelBackground.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabelBackground.topAnchor.constraint(equalTo: topAnchor),
            topRedLabelBackground.heightAnchor.constraint(equalToConstant: 50),
            
            historyTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            historyTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            historyDescriptionLabel.centerYAnchor.constraint(equalTo: topRedLabel.centerYAnchor),
            historyDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            seasonYearButton.topAnchor.constraint(equalTo: historyDescriptionLabel.topAnchor, constant: -5),
            seasonYearButton.leadingAnchor.constraint(equalTo: historyDescriptionLabel.trailingAnchor, constant: 10),
            seasonYearButton.widthAnchor.constraint(equalToConstant: 80),
            
            seasonYearTitle.topAnchor.constraint(equalTo: seasonYearButton.topAnchor, constant: 5),
            seasonYearTitle.leadingAnchor.constraint(equalTo: seasonYearButton.leadingAnchor, constant: 8),
            
            seasonYearIcon.heightAnchor.constraint(equalToConstant: 10),
            seasonYearIcon.widthAnchor.constraint(equalToConstant: 10),
            seasonYearIcon.trailingAnchor.constraint(equalTo: seasonYearButton.trailingAnchor),
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

