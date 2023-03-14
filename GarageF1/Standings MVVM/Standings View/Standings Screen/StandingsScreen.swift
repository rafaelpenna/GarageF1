//
//  StandingsScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class StandingsScreen: UIView {

    lazy var topRedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "seta"), for: .normal)
        return backButton
    }()
    
    lazy var circuitCountry: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Brazil"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var standingsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Resultados", for: .normal)
        button.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var trackButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Circuito", for: .normal)
        button.setTitleColor(.darkGray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var standingsBoard: UIStackView = {
        let label = UIStackView()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var standingsHeader: HeaderStandings = {
        let label = HeaderStandings()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var tableViewStandings: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(StandingsTableViewCell.self, forCellReuseIdentifier: StandingsTableViewCell.identifier)
        return tableView
    }()
    
    lazy var tableViewTrack: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1).cgColor
        tableView.register(TrackImageCellScreen.self, forCellReuseIdentifier: "TrackImageCellScreen")
        tableView.register(CircuitLenghtCellScreen.self, forCellReuseIdentifier: "CircuitLenghtCellScreen")
        tableView.register(RaceLapsCellScreen.self, forCellReuseIdentifier: "RaceLapsCellScreen")
        tableView.register(FirstGrandPrixCellScreen.self, forCellReuseIdentifier: "FirstGrandPrixCellScreen")
        tableView.register(RaceDistanceCellScreen.self, forCellReuseIdentifier: "RaceDistanceCellScreen")
        tableView.register(TrackRecordCellScreen.self, forCellReuseIdentifier: "TrackRecordCellScreen")
        return tableView
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
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        self.tableViewStandings.delegate = delegate
        self.tableViewStandings.dataSource = dataSource
        self.tableViewTrack.delegate = delegate
        self.tableViewTrack.dataSource = dataSource
    }
    
    private func addElements() {
        addSubview(topRedLabel)
        addSubview(circuitCountry)
        addSubview(trackButton)
        addSubview(standingsButton)
        addSubview(backButton)
        addSubview(tableViewTrack)
        addSubview(standingsBoard)
        standingsBoard.self.addSubview(standingsHeader)
        standingsBoard.self.addSubview(tableViewStandings)
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1.0)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabel.topAnchor.constraint(equalTo: topAnchor),
            topRedLabel.heightAnchor.constraint(equalToConstant: 135),
            
            circuitCountry.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            circuitCountry.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 20),
            
            standingsButton.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -10),
            standingsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            
            trackButton.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -10),
            trackButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            
            tableViewTrack.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            tableViewTrack.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableViewTrack.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableViewTrack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -90),
            
//            Standings Board
                        
            standingsBoard.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            standingsBoard.leadingAnchor.constraint(equalTo: leadingAnchor),
            standingsBoard.trailingAnchor.constraint(equalTo: trailingAnchor),
            standingsBoard.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -90),
                        
            standingsHeader.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            standingsHeader.leadingAnchor.constraint(equalTo: leadingAnchor),
            standingsHeader.trailingAnchor.constraint(equalTo: trailingAnchor),
            standingsHeader.heightAnchor.constraint(equalToConstant: 100),
                        
            tableViewStandings.topAnchor.constraint(equalTo: standingsHeader.bottomAnchor),
            tableViewStandings.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableViewStandings.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableViewStandings.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -90),
        ])
    }

}
