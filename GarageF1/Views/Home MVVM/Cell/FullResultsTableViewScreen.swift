//
//  FullResultsTableViewScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 17/03/23.
//

import UIKit

class FullResultsTableViewScreen: UIView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Campeonato de construtores"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var titleConstructorsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TOP 3"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var fullResultsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.separatorColor = .darkGray
        tableView.allowsSelection = false
        tableView.isScrollEnabled = false
        tableView.separatorStyle = .singleLine
        tableView.layer.cornerRadius = 20
        tableView.register(CustomResultsFullTableView.self, forCellReuseIdentifier: CustomResultsFullTableView.identifier)
        tableView.register(TopResultsTableViewCell.self, forCellReuseIdentifier: TopResultsTableViewCell.identifier)
        return tableView

    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubview() {
        addSubview(titleConstructorsLabel)
        addSubview(titleLabel)
        addSubview(fullResultsTableView)
    }
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        fullResultsTableView.delegate = delegate
        fullResultsTableView.dataSource = dataSource
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            
            titleConstructorsLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            titleConstructorsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            titleConstructorsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            titleLabel.topAnchor.constraint(equalTo: titleConstructorsLabel.bottomAnchor, constant: 5),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            
            fullResultsTableView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            fullResultsTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            fullResultsTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            fullResultsTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
        ])
    }
}
