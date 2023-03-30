//
//  RacesScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import UIKit

class RacesScreen: UIView {

    lazy var tableViewInfoRaces: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        tableView.register(RacesCustomTableViewCell.self, forCellReuseIdentifier: "RacesCustomTableViewCell")
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
    
    lazy var racesHeadLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Etapas"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var seasonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TEMPORADA 2023"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    lazy var driversDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Confira os resultados e informações de todas as etapas da temporada:"
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(tableViewInfoRaces)
        addSubview(topRedLabel)
        addSubview(topRedLabelBackground)
        addSubview(racesHeadLabel)
        addSubview(seasonLabel)
        addSubview(driversDescriptionLabel)
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableViewInfoRaces.delegate = delegate
        self.tableViewInfoRaces.dataSource = dataSource
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
            
            tableViewInfoRaces.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            tableViewInfoRaces.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            tableViewInfoRaces.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            tableViewInfoRaces.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            racesHeadLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            racesHeadLabel.centerXAnchor.constraint(equalTo: topRedLabel.centerXAnchor),
            
            seasonLabel.bottomAnchor.constraint(equalTo: driversDescriptionLabel.topAnchor, constant: -4),
            seasonLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            driversDescriptionLabel.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -8),
            driversDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            driversDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
}
