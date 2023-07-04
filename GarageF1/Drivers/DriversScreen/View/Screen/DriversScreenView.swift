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
    
    lazy var safeAreaBackgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var backgroundTopView: UIView = {
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
        addSubview(safeAreaBackgroundView)
        addSubview(backgroundTopView)
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
            
            safeAreaBackgroundView.leadingAnchor.constraint(equalTo: leadingAnchor),
            safeAreaBackgroundView.trailingAnchor.constraint(equalTo: trailingAnchor),
            safeAreaBackgroundView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            safeAreaBackgroundView.heightAnchor.constraint(equalToConstant: 135),
            
            backgroundTopView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopView.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopView.heightAnchor.constraint(equalToConstant: 80),
            
            infoDriversTableView.topAnchor.constraint(equalTo: safeAreaBackgroundView.bottomAnchor),
            infoDriversTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            infoDriversTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            infoDriversTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            driversHeadLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            driversHeadLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            driversDescriptionLabel.bottomAnchor.constraint(equalTo: safeAreaBackgroundView.bottomAnchor, constant: -20),
            driversDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
        ])
    }
}
