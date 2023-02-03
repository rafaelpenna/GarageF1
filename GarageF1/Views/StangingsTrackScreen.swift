//
//  StangingsTrackScreen.swift
//  GarageF1
//
//  Created by Rafael Penna on 03/02/23.
//

import UIKit

class StandignsTrackScreen: UIView {
    
    lazy var topLabel: UILabel = {
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
    
    lazy var circuitName: UILabel = {
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
    
    lazy var standignsBoard: UIStackView = {
        let label = UIStackView()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var standingsHeader: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var tableViewStandings: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.backgroundColor = UIColor(red: 242, green: 24, blue: 2, alpha: 1).cgColor
        tableView.register(StandingsTableViewCell.self, forCellReuseIdentifier: StandingsTableViewCell.identifier)
        return tableView
    }()
    
//    Stack HeaderInformation
    
    lazy var standoutDriver: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.layer.backgroundColor = UIColor(red: 242, green: 242, blue: 242, alpha: 1).cgColor
        return label
    }()
    
    lazy var headerInformation: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .gray
        return label
    }()
    
    // Info do Head Information
    
    lazy var posTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "POS"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    lazy var driverTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "DRIVER"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    lazy var timeTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TIME/RET"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
    lazy var ptsTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "PTS"
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .white
        return label
    }()
    
//    Info Best Driver
    
    lazy var standoutBackground: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var standoutName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "RUSSEL"
        label.font = UIFont.boldSystemFont(ofSize: 30)
        return label
    }()
    
    lazy var standoutTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "VOLTA MAIS RÁPIDA"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .red
        return label
    }()
    
    lazy var standoutTime: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1:13:785"
        label.font = UIFont.italicSystemFont(ofSize: 22)
        return label
    }()
    
    
//    Stack do circuito
    
    func changeInfo() {
        if standingsButton.isSelected == true {
            addSubview(standignsBoard)
        } else {
            addSubview(standignsBoard)
        }
    }
   

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
    }
    
    private func addElements() {
        addSubview(topLabel)
        addSubview(circuitName)
        addSubview(trackButton)
        addSubview(standingsButton)
        addSubview(backButton)
        changeInfo()
        standignsBoard.self.addSubview(tableViewStandings)
        standignsBoard.self.addSubview(standingsHeader)
        
//        Stack Header Information
        standingsHeader.self.addSubview(standoutDriver)
        standingsHeader.self.addSubview(headerInformation)
        headerInformation.self.addSubview(posTitle)
        headerInformation.self.addSubview(driverTitle)
        headerInformation.self.addSubview(timeTitle)
        headerInformation.self.addSubview(ptsTitle)
        
//        Stack Best Driver
        
        standoutDriver.self.addSubview(standoutBackground)
        standoutBackground.self.addSubview(standoutName)
        standoutBackground.self.addSubview(standoutTitle)
        standoutBackground.self.addSubview(standoutTime)
        
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 243, green: 243, blue: 243, alpha: 1.0)
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            
            topLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            topLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            topLabel.topAnchor.constraint(equalTo: topAnchor),
            topLabel.heightAnchor.constraint(equalToConstant: 150),
            
            circuitName.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            circuitName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 20),
            
            standingsButton.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -10),
            standingsButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            
            trackButton.bottomAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: -10),
            trackButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            
            standignsBoard.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            standignsBoard.leadingAnchor.constraint(equalTo: leadingAnchor),
            standignsBoard.trailingAnchor.constraint(equalTo: trailingAnchor),
            standignsBoard.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80),
            
            standingsHeader.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            standingsHeader.leadingAnchor.constraint(equalTo: leadingAnchor),
            standingsHeader.trailingAnchor.constraint(equalTo: trailingAnchor),
            standingsHeader.heightAnchor.constraint(equalToConstant: 100),
            
            tableViewStandings.topAnchor.constraint(equalTo: standingsHeader.bottomAnchor),
            tableViewStandings.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableViewStandings.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableViewStandings.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80),
            
//            Stack header Information
            
            standoutDriver.topAnchor.constraint(equalTo: standingsHeader.topAnchor),
            standoutDriver.leadingAnchor.constraint(equalTo: standingsHeader.leadingAnchor),
            standoutDriver.trailingAnchor.constraint(equalTo: standingsHeader.trailingAnchor),
            standoutDriver.bottomAnchor.constraint(equalTo: headerInformation.topAnchor),
            
            headerInformation.heightAnchor.constraint(equalToConstant: 22),
            headerInformation.leadingAnchor.constraint(equalTo: standingsHeader.leadingAnchor),
            headerInformation.trailingAnchor.constraint(equalTo: standingsHeader.trailingAnchor),
            headerInformation.bottomAnchor.constraint(equalTo: standingsHeader.bottomAnchor),
            
            posTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            posTitle.topAnchor.constraint(equalTo: headerInformation.topAnchor, constant: 1),
            
            driverTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 55),
            driverTitle.topAnchor.constraint(equalTo: headerInformation.topAnchor, constant: 1),
            
            timeTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 160),
            timeTitle.topAnchor.constraint(equalTo: headerInformation.topAnchor, constant: 1),
            
            ptsTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            ptsTitle.topAnchor.constraint(equalTo: headerInformation.topAnchor, constant: 1),
            
//            Stack Best Driver
            
            standoutBackground.topAnchor.constraint(equalTo: standoutDriver.topAnchor, constant: 10),
            standoutBackground.leadingAnchor.constraint(equalTo: standoutDriver.leadingAnchor, constant: 25),
            standoutBackground.trailingAnchor.constraint(equalTo: standoutDriver.trailingAnchor, constant: -25),
            standoutBackground.bottomAnchor.constraint(equalTo: standoutDriver.bottomAnchor, constant: -5),
            
            standoutTitle.topAnchor.constraint(equalTo: standoutBackground.topAnchor, constant: 2),
            standoutTitle.leadingAnchor.constraint(equalTo: standoutBackground.leadingAnchor, constant: 10),
            
            standoutName.leadingAnchor.constraint(equalTo: standoutBackground.leadingAnchor, constant: 10),
            standoutName.bottomAnchor.constraint(equalTo: standoutBackground.bottomAnchor, constant: -5),
            
            standoutTime.trailingAnchor.constraint(equalTo: standoutBackground.trailingAnchor, constant: -15),
            standoutTime.bottomAnchor.constraint(equalTo: standoutBackground.bottomAnchor, constant: -15),

        ])
    }
}
