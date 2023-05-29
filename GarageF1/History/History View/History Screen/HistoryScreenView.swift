//
//  HistoryScreenView.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import UIKit

class HistoryScreenView: UIView {

    lazy var topRedView: UIView = {
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
    
    lazy var backgroundSearchView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1).cgColor
        return view
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
        addSubview(topRedView)
        addSubview(backgroundTopRedView)
        addSubview(historyTitleLabel)
        addSubview(historyDescriptionLabel)
        addSubview(seasonYearButton)
        seasonYearButton.addSubview(seasonYearTitleLabel)
        seasonYearButton.addSubview(seasonYearIconImage)
        addSubview(backgroundSearchView)
        addSubview(searchTextField)
        addSubview(searchImageView)
        addSubview(yearsTableView)
        addSubview(driversButton)
        addSubview(teamsButton)

        addSubview(driversTableView)
        addSubview(teamsTableView)
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        driversTableView.delegate = delegate
        driversTableView.dataSource = dataSource
        teamsTableView.delegate = delegate
        teamsTableView.dataSource = dataSource
        yearsTableView.delegate = delegate
        yearsTableView.dataSource = dataSource
    }
        
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topRedView.heightAnchor.constraint(equalToConstant: 135),
            
            backgroundTopRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopRedView.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopRedView.heightAnchor.constraint(equalToConstant: 50),
            
            historyTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            historyTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            historyDescriptionLabel.centerYAnchor.constraint(equalTo: topRedView.centerYAnchor),
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
            
            backgroundSearchView.topAnchor.constraint(equalTo: seasonYearButton.bottomAnchor),
            backgroundSearchView.leadingAnchor.constraint(equalTo: seasonYearButton.leadingAnchor),
            backgroundSearchView.widthAnchor.constraint(equalToConstant: 90),
            backgroundSearchView.heightAnchor.constraint(equalToConstant: 30),
            
            searchImageView.topAnchor.constraint(equalTo: backgroundSearchView.topAnchor, constant: 5),
            searchImageView.leadingAnchor.constraint(equalTo: seasonYearButton.leadingAnchor, constant: 3),
            searchImageView.widthAnchor.constraint(equalToConstant: 20),
            searchImageView.heightAnchor.constraint(equalToConstant: 20),
            
            searchTextField.topAnchor.constraint(equalTo: backgroundSearchView.topAnchor, constant: 5),
            searchTextField.leadingAnchor.constraint(equalTo: searchImageView.trailingAnchor, constant: 5),
            searchTextField.widthAnchor.constraint(equalToConstant: 55),
            
            yearsTableView.topAnchor.constraint(equalTo: backgroundSearchView.bottomAnchor),
            yearsTableView.leadingAnchor.constraint(equalTo: backgroundSearchView.leadingAnchor),
            yearsTableView.widthAnchor.constraint(equalToConstant: 90),
            yearsTableView.heightAnchor.constraint(equalToConstant: 220),
            
            driversButton.bottomAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: -10),
            driversButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 60),
            
            teamsButton.bottomAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: -10),
            teamsButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -60),
            
            driversTableView.topAnchor.constraint(equalTo: topRedView.bottomAnchor),
            driversTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            driversTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            driversTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            teamsTableView.topAnchor.constraint(equalTo: topRedView.bottomAnchor),
            teamsTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            teamsTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            teamsTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
        ])
    }
}

