//
//  DriversScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/12/22.
//

import UIKit

class DriversScreen: UIView {

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(DriversTableViewCell.self, forCellReuseIdentifier: DriversTableViewCell.identifier)
        return tableView
    }()
    
    lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        // Precisa colocar a cor certa
        return label
    }()
    
    lazy var driversLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pilotos"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.tableView)
        self.addSubview(self.topLabel)
        self.addSubview(self.driversLabel)
        self.configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
        
    }

    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 120),
            
            tableView.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80),
            
            driversLabel.topAnchor.constraint(equalTo: topAnchor, constant: 55),
            driversLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        ])
    }

    

}
