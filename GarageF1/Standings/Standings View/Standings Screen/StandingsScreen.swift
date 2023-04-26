//
//  StandingsScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class StandingsScreen: UIView {
    
    var standingsViewModel: StandingsViewModel = StandingsViewModel()

    lazy var topRedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var backgroundTopRedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        return backButton
    }()
    
    lazy var circuitCountryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = standingsViewModel.getCircuitCountry()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 35)
        return label
    }()
    
    lazy var standingsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Resultados", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var trackButton: UIButton = {
        var button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Circuito", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        return button
    }()
    
    lazy var standingsBoardView: UIStackView = {
        let label = UIStackView()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var standingsHeader: HeaderStandings = {
        let label = HeaderStandings()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var standingsTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        tableView.register(StandingsTableViewCell.self, forCellReuseIdentifier: StandingsTableViewCell.identifier)
        return tableView
    }()
    
    lazy var trackTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
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
        self.standingsTableView.delegate = delegate
        self.standingsTableView.dataSource = dataSource
        self.trackTableView.delegate = delegate
        self.trackTableView.dataSource = dataSource
    }
    
    private func addElements() {
        addSubview(backgroundTopRedLabel)
        addSubview(topRedLabel)
        addSubview(circuitCountryLabel)
        addSubview(trackButton)
        addSubview(standingsButton)
        addSubview(backButton)
        addSubview(standingsBoardView)
        standingsBoardView.self.addSubview(standingsHeader)
        standingsBoardView.self.addSubview(standingsTableView)
        addSubview(trackTableView)
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topRedLabel.heightAnchor.constraint(equalToConstant: 135),
            
            backgroundTopRedLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopRedLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopRedLabel.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopRedLabel.heightAnchor.constraint(equalToConstant: 50),
            
            circuitCountryLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            circuitCountryLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            backButton.topAnchor.constraint(equalTo: backgroundTopRedLabel.bottomAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            standingsButton.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -10),
            standingsButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 60),
            
            trackButton.bottomAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: -10),
            trackButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -60),
            
            trackTableView.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor, constant: 15),
            trackTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15),
            trackTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15),
            trackTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
//            Standings Board
                        
            standingsBoardView.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            standingsBoardView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            standingsBoardView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            standingsBoardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -90),
                        
            standingsHeader.topAnchor.constraint(equalTo: topRedLabel.bottomAnchor),
            standingsHeader.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            standingsHeader.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            standingsHeader.heightAnchor.constraint(equalToConstant: 100),
                        
            standingsTableView.topAnchor.constraint(equalTo: standingsHeader.bottomAnchor),
            standingsTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            standingsTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            standingsTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

}
