//
//  HomeScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 08/02/23.
//

import UIKit

class HomeScreen: UIView {

    private lazy var topLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    private lazy var topRedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    private lazy var homeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Home"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Bem-Vindo!"
        label.numberOfLines = 1
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        
        return label
    }()
    
    lazy var userNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ellington Cavalcante"
        label.numberOfLines = 1
        label.font = UIFont.boldSystemFont(ofSize: 19)
        label.textColor = .white
        return label
    }()
    
    lazy var superTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1.0)
//        tableView.register(WelcomeUserCustomTableView.self, forCellReuseIdentifier: WelcomeUserCustomTableView.identifier)
        tableView.register(StandingCustomTableViewCell.self, forCellReuseIdentifier: StandingCustomTableViewCell.identifier)
        tableView.register(DDuelCustomTableViewCell.self, forCellReuseIdentifier: DDuelCustomTableViewCell.identifier)
        tableView.register(SimulationButtonTableViewCell.self, forCellReuseIdentifier: SimulationButtonTableViewCell.identifier)
        tableView.register(FullResultsTableViewCell.self, forCellReuseIdentifier: FullResultsTableViewCell.identifier)
        tableView.register(FullResultButtonTableViewCell.self, forCellReuseIdentifier: FullResultButtonTableViewCell.identifier)
        return tableView
        
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(topLabel)
        addSubview(homeLabel)
        addSubview(welcomeLabel)
        addSubview(userNameLabel)
        addSubview(superTableView)
        addSubview(topRedLabel)
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        superTableView.delegate = delegate
        superTableView.dataSource = dataSource
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            welcomeLabel.topAnchor.constraint(equalTo: homeLabel.bottomAnchor, constant: 30),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            userNameLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 5),
            userNameLabel.leadingAnchor.constraint(equalTo: welcomeLabel.leadingAnchor),
            
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 135),
            
            topRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabel.topAnchor.constraint(equalTo: topAnchor),
            topRedLabel.heightAnchor.constraint(equalToConstant: 50),
            
            homeLabel.centerXAnchor.constraint(equalTo: topLabel.centerXAnchor),
            homeLabel.topAnchor.constraint(equalTo: topAnchor, constant: 40),
            
            superTableView.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            superTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            superTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            superTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
        ])
    }
}
