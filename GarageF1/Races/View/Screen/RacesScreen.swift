//
//  RacesScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import UIKit

class RacesScreen: UIView {

    lazy var infoRacesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        tableView.register(RacesCustomTableViewCell.self, forCellReuseIdentifier: RacesCustomTableViewCell.identifier)

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
    
    lazy var racesHeaderLabel: UILabel = {
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
        addElements()
        setBackgroundColor()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(infoRacesTableView)
        addSubview(topRedView)
        addSubview(backgroundTopRedView)
        addSubview(racesHeaderLabel)
        addSubview(seasonLabel)
        addSubview(driversDescriptionLabel)
    }
    
    private func setBackgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.infoRacesTableView.delegate = delegate
        self.infoRacesTableView.dataSource = dataSource
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
            
            infoRacesTableView.topAnchor.constraint(equalTo: topRedView.bottomAnchor),
            infoRacesTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            infoRacesTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            infoRacesTableView.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            
            racesHeaderLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            racesHeaderLabel.centerXAnchor.constraint(equalTo: topRedView.centerXAnchor),
            
            seasonLabel.bottomAnchor.constraint(equalTo: driversDescriptionLabel.topAnchor, constant: -4),
            seasonLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            driversDescriptionLabel.bottomAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: -8),
            driversDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            driversDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
        ])
    }
}
