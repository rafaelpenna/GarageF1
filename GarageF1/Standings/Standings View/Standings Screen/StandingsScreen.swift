//
//  StandingsScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class StandingsScreen: UIView {
    
    var standingsViewModel: StandingsViewModel = StandingsViewModel()

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
        tableView.register(TrackImageCellScreen.self, forCellReuseIdentifier: TrackImageCellScreen.identifier)
        tableView.register(CircuitLenghtCellScreen.self, forCellReuseIdentifier: CircuitLenghtCellScreen.identifier)
        tableView.register(RaceLapsCellScreen.self, forCellReuseIdentifier: RaceLapsCellScreen.identifier)
        tableView.register(FirstGrandPrixCellScreen.self, forCellReuseIdentifier: FirstGrandPrixCellScreen.identifier)
        tableView.register(RaceDistanceCellScreen.self, forCellReuseIdentifier: RaceDistanceCellScreen.identifier)
        tableView.register(TrackRecordCellScreen.self, forCellReuseIdentifier: TrackRecordCellScreen.identifier)
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
        standingsTableView.delegate = delegate
        standingsTableView.dataSource = dataSource
        trackTableView.delegate = delegate
        trackTableView.dataSource = dataSource
    }
    
    private func addElements() {
        addSubview(backgroundTopRedView)
        addSubview(topRedView)
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
            
            topRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topRedView.heightAnchor.constraint(equalToConstant: 135),
            
            backgroundTopRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopRedView.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopRedView.heightAnchor.constraint(equalToConstant: 50),
            
            circuitCountryLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            circuitCountryLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            backButton.topAnchor.constraint(equalTo: backgroundTopRedView.bottomAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            standingsButton.bottomAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: -10),
            standingsButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 60),
            
            trackButton.bottomAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: -10),
            trackButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -60),
            
            trackTableView.topAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: 15),
            trackTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 15),
            trackTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -15),
            trackTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
//MARK: - StandingsBoardView Constraints
         
            standingsBoardView.topAnchor.constraint(equalTo: topRedView.bottomAnchor),
            standingsBoardView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            standingsBoardView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            standingsBoardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -90),
                        
            standingsHeader.topAnchor.constraint(equalTo: topRedView.bottomAnchor),
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
