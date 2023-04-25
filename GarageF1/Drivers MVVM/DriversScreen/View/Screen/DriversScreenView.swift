//
//  DriversScreenView.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversScreenView: UIView {

    lazy var tableViewInfoDrivers: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(DriversCustomTableViewCell.self, forCellReuseIdentifier: "DriversCustomTableViewCell")
        return tableView
    }()
    
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
    
    lazy var driversHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pilotos"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var driversDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pilotos ativos na temporada atual:"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
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
        addSubview(tableViewInfoDrivers)
        addSubview(topRedLabel)
        addSubview(topRedLabelBackground)
        addSubview(driversHeadLabel)
        addSubview(driversDescriptionLabel)
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableViewInfoDrivers.delegate = delegate
        self.tableViewInfoDrivers.dataSource = dataSource
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
            
            tableViewInfoDrivers.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            tableViewInfoDrivers.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableViewInfoDrivers.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableViewInfoDrivers.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            driversHeadLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            driversHeadLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            driversDescriptionLabel.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -20),
            driversDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
