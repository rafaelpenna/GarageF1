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
    
    lazy var backgroundTopRedLabel: UILabel = {
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
    
    lazy var seasonYearTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor.white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    lazy var seasonYearIconImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "seasonIcon")
        return imageView
    }()
    
    lazy var backgroundSearchLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1).cgColor
        return label
    }()
    
    lazy var searchTextField: UITextField = {
       let searchField = UITextField()
        searchField.translatesAutoresizingMaskIntoConstraints = false
        searchField.layer.backgroundColor = .none
        searchField.textColor = .white
        searchField.keyboardType = .numberPad
        return searchField
    }()
    
    lazy var searchImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "magnifyingglass")
        image.tintColor = .white
        return image
    }()
    
    lazy var yearsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
        tableView.register(HistoryYearsTableViewCell.self, forCellReuseIdentifier: HistoryYearsTableViewCell.identifier)
        return tableView
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
    
    lazy var driversTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1).cgColor
        tableView.register(HistoryDriversTableViewCell.self, forCellReuseIdentifier: HistoryDriversTableViewCell.identifier)
        return tableView
    }()
    
    lazy var teamsTableView: UITableView = {
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
        addSubview(backgroundTopRedLabel)
        addSubview(historyTitleLabel)
        addSubview(historyDescriptionLabel)
        addSubview(seasonYearButton)
        seasonYearButton.addSubview(seasonYearTitleLabel)
        seasonYearButton.addSubview(seasonYearIconImage)
        addSubview(backgroundSearchLabel)
        addSubview(searchTextField)
        addSubview(searchImageView)
        addSubview(yearsTableView)
        addSubview(driversButton)
        addSubview(teamsButton)

        addSubview(driversTableView)
        addSubview(teamsTableView)
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.driversTableView.delegate = delegate
        self.driversTableView.dataSource = dataSource
        self.teamsTableView.delegate = delegate
        self.teamsTableView.dataSource = dataSource
        self.yearsTableView.delegate = delegate
        self.yearsTableView.dataSource = dataSource
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
            
            backgroundTopRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopRedLabel.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopRedLabel.heightAnchor.constraint(equalToConstant: 50),
            
            historyTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            historyTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            historyDescriptionLabel.centerYAnchor.constraint(equalTo: topRedLabel.centerYAnchor),
            historyDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            seasonYearButton.topAnchor.constraint(equalTo: historyDescriptionLabel.topAnchor, constant: -5),
            seasonYearButton.leadingAnchor.constraint(equalTo: historyDescriptionLabel.trailingAnchor, constant: 10),
            seasonYearButton.widthAnchor.constraint(equalToConstant: 85),
            
            seasonYearTitleLabel.topAnchor.constraint(equalTo: seasonYearButton.topAnchor, constant: 5),
            seasonYearTitleLabel.leadingAnchor.constraint(equalTo: seasonYearButton.leadingAnchor, constant: 8),
            
            seasonYearIconImage.heightAnchor.constraint(equalToConstant: 10),
            seasonYearIconImage.widthAnchor.constraint(equalToConstant: 10),
            seasonYearIconImage.trailingAnchor.constraint(equalTo: seasonYearButton.trailingAnchor),
            seasonYearIconImage.topAnchor.constraint(equalTo: seasonYearButton.topAnchor, constant: 12),
            
            backgroundSearchLabel.topAnchor.constraint(equalTo: seasonYearButton.bottomAnchor),
            backgroundSearchLabel.leadingAnchor.constraint(equalTo: seasonYearButton.leadingAnchor),
            backgroundSearchLabel.widthAnchor.constraint(equalToConstant: 90),
            backgroundSearchLabel.heightAnchor.constraint(equalToConstant: 30),
            
            searchImageView.topAnchor.constraint(equalTo: backgroundSearchLabel.topAnchor, constant: 5),
            searchImageView.leadingAnchor.constraint(equalTo: seasonYearButton.leadingAnchor, constant: 3),
            searchImageView.widthAnchor.constraint(equalToConstant: 20),
            searchImageView.heightAnchor.constraint(equalToConstant: 20),
            
            searchTextField.topAnchor.constraint(equalTo: backgroundSearchLabel.topAnchor, constant: 5),
            searchTextField.leadingAnchor.constraint(equalTo: searchImageView.trailingAnchor, constant: 5),
            searchTextField.widthAnchor.constraint(equalToConstant: 55),
            
            yearsTableView.topAnchor.constraint(equalTo: backgroundSearchLabel.bottomAnchor),
            yearsTableView.leadingAnchor.constraint(equalTo: backgroundSearchLabel.leadingAnchor),
            yearsTableView.widthAnchor.constraint(equalToConstant: 90),
            yearsTableView.heightAnchor.constraint(equalToConstant: 220),
            
            driversButton.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -10),
            driversButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 60),
            
            teamsButton.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -10),
            teamsButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -60),
            
            driversTableView.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            driversTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            driversTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            driversTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            teamsTableView.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            teamsTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            teamsTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            teamsTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        ])
    }
}

