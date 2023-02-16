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
        // Precisa colocar a cor certa
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.tableViewInfoDrivers)
        self.addSubview(self.topRedLabel)
        self.addSubview(self.driversHeadLabel)
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableViewInfoDrivers.delegate = delegate
        self.tableViewInfoDrivers.dataSource = dataSource
    }

    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabel.topAnchor.constraint(equalTo: topAnchor),
            topRedLabel.heightAnchor.constraint(equalToConstant: 115),
            
            tableViewInfoDrivers.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            tableViewInfoDrivers.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableViewInfoDrivers.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableViewInfoDrivers.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            driversHeadLabel.centerYAnchor.constraint(equalTo: topRedLabel.centerYAnchor),
            driversHeadLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
