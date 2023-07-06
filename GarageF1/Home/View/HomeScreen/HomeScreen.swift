//
//  HomeScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 08/02/23.
//

import UIKit

protocol HomeScreenProtocol: AnyObject {
    func actionLogOutButton()
}

class HomeScreen: UIView {
    
    private weak var delegate: HomeScreenProtocol?
    func delegate(delegate: HomeScreenProtocol?) {
        self.delegate = delegate
    }

    private lazy var topView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    private lazy var topRedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
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
        label.font = UIFont.boldSystemFont(ofSize: 21)
        label.textColor = .white
        
        return label
    }()
    
    lazy var logOutButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "logOutIconWhite"), for: .normal)
        button.addTarget(self, action: #selector(tappedLogOutButton), for: .touchUpInside)
        return button
    }()
    
    @objc func tappedLogOutButton() {
        delegate?.actionLogOutButton()
    }
    
    lazy var superTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1.0)
        tableView.register(StandingCustomTableViewCell.self, forCellReuseIdentifier: StandingCustomTableViewCell.identifier)
        tableView.register(DDuelCustomTableViewCell.self, forCellReuseIdentifier: DDuelCustomTableViewCell.identifier)
        tableView.register(SimulationButtonTableViewCell.self, forCellReuseIdentifier: SimulationButtonTableViewCell.identifier)
        tableView.register(FullResultsTableViewCell.self, forCellReuseIdentifier: FullResultsTableViewCell.identifier)
        tableView.register(FullResultButtonTableViewCell.self, forCellReuseIdentifier: FullResultButtonTableViewCell.identifier)
        return tableView
        
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements() {
        addSubview(topRedView)
        addSubview(topView)
        addSubview(homeLabel)
        addSubview(welcomeLabel)
        addSubview(superTableView)
        addSubview(logOutButton)
    }

    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        superTableView.delegate = delegate
        superTableView.dataSource = dataSource
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            welcomeLabel.topAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: 63),
            welcomeLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),

            topView.leadingAnchor.constraint(equalTo: leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: trailingAnchor),
            topView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topView.heightAnchor.constraint(equalToConstant: 135),
            
            topRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedView.topAnchor.constraint(equalTo: topAnchor),
            topRedView.heightAnchor.constraint(equalToConstant: 80),
            
            homeLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor),
            homeLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            
            superTableView.topAnchor.constraint(equalTo: topView.bottomAnchor),
            superTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            superTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            superTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            logOutButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 10),
            logOutButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            logOutButton.widthAnchor.constraint(equalToConstant: 30),
            logOutButton.heightAnchor.constraint(equalToConstant: 30),
            
        ])
    }
}
