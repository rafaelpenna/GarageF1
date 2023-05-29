//
//  DriversScreenView.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversScreenView: UIView {

    lazy var infoDriversTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(DriversCustomTableViewCell.self, forCellReuseIdentifier: DriversCustomTableViewCell.identifier)
        return tableView
    }()
    
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
        addSubview(infoDriversTableView)
        addSubview(topRedView)
        addSubview(backgroundTopRedView)
        addSubview(driversHeadLabel)
        addSubview(driversDescriptionLabel)
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        infoDriversTableView.delegate = delegate
        infoDriversTableView.dataSource = dataSource
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
            
            infoDriversTableView.topAnchor.constraint(equalTo: topRedView.bottomAnchor),
            infoDriversTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            infoDriversTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            infoDriversTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            driversHeadLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            driversHeadLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            driversDescriptionLabel.bottomAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: -20),
            driversDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
