//
//  StandingsScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class StandingsScreen: UIView {
    
    var standingsViewModel: StandingsViewModel = StandingsViewModel()

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
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        return backButton
    }()
    
    lazy var circuitCountryLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
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
    
    lazy var backgroundView: UIView = {
       let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .none
        return background
    }()
    
    lazy var resultsLoadFailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Estamos tendo problemas para carregar os resultados. Por favor tente novamente em instantes."
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.isHidden = true
        return label
    }()
    
    lazy var eventSoonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Este evento ocorrerá em breve."
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.isHidden = true
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
        addSubview(backgroundTopView)
        addSubview(safeAreaBackgroundView)
        addSubview(circuitCountryLabel)
        addSubview(trackButton)
        addSubview(standingsButton)
        addSubview(backButton)
        addSubview(standingsBoardView)
        addSubview(eventSoonLabel)
        standingsBoardView.self.addSubview(standingsHeader)
        standingsBoardView.self.addSubview(standingsTableView)
        standingsBoardView.self.addArrangedSubview(resultsLoadFailLabel)
        addSubview(trackTableView)
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
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
            
            circuitCountryLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            circuitCountryLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            backButton.topAnchor.constraint(equalTo: backgroundTopView.bottomAnchor, constant: 5),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            standingsButton.bottomAnchor.constraint(equalTo: safeAreaBackgroundView.bottomAnchor, constant: -10),
            standingsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            
            trackButton.bottomAnchor.constraint(equalTo: safeAreaBackgroundView.bottomAnchor, constant: -10),
            trackButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            
            trackTableView.topAnchor.constraint(equalTo: safeAreaBackgroundView.bottomAnchor, constant: 15),
            trackTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            trackTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            trackTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            eventSoonLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            eventSoonLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            eventSoonLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            eventSoonLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            
//MARK: - StandingsBoardView Constraints
         
            standingsBoardView.topAnchor.constraint(equalTo: safeAreaBackgroundView.bottomAnchor),
            standingsBoardView.leadingAnchor.constraint(equalTo: leadingAnchor),
            standingsBoardView.trailingAnchor.constraint(equalTo: trailingAnchor),
            standingsBoardView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -90),
                        
            standingsHeader.topAnchor.constraint(equalTo: safeAreaBackgroundView.bottomAnchor),
            standingsHeader.leadingAnchor.constraint(equalTo: leadingAnchor),
            standingsHeader.trailingAnchor.constraint(equalTo: trailingAnchor),
            standingsHeader.heightAnchor.constraint(equalToConstant: 100),

            standingsTableView.topAnchor.constraint(equalTo: standingsHeader.bottomAnchor),
            standingsTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            standingsTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            standingsTableView.bottomAnchor.constraint(equalTo: bottomAnchor),

            resultsLoadFailLabel.topAnchor.constraint(equalTo: eventSoonLabel.bottomAnchor, constant: 150),
            resultsLoadFailLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            resultsLoadFailLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
        ])
    }
}
