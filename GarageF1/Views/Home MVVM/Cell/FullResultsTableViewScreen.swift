//
//  FullResultsTableViewScreen.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 17/03/23.
//

import UIKit

class FullResultsTableViewScreen: UIView {
    
    lazy var fullResultsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .white
        tableView.separatorStyle = .none
        tableView.separatorColor = .darkGray
        tableView.allowsSelection = false
        tableView.isScrollEnabled = false
        tableView.register(CustomResultsFullTableView.self, forCellReuseIdentifier: CustomResultsFullTableView.identifier)
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
        addSubview(fullResultsTableView)
    }
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        fullResultsTableView.delegate = delegate
        fullResultsTableView.dataSource = dataSource
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            fullResultsTableView.topAnchor.constraint(equalTo: topAnchor),
            fullResultsTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            fullResultsTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            fullResultsTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
