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
    
    let scrollView: UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var trackBoard: UIStackView = {
        let label = UIStackView()
        label.translatesAutoresizingMaskIntoConstraints = false
//        label.layer.backgroundColor = UIColor(red: 242, green: 242, blue: 242, alpha: 1).cgColor
        label.backgroundColor = .lightGray
        return label
    }()
    
    lazy var trackImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "interlagos")
        return image
    }()
    
//    Track Lenght
    lazy var trackLenght: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var trackLenghtTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Comprimento do Circuito"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var trackLenghtAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "4.309"
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        return label
    }()
    
    lazy var trackLenghtUnit: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "KM"
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.textColor = .gray
        return label
    }()
    
//    Track Laps
    
    lazy var trackLaps: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var trackLapsTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Número de Voltas"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var trackLapsAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "71"
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        return label
    }()
    
//    Track First Race
    
    lazy var firstRace: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var firstRacetitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Primeiro Grand Prix"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var firstRaceAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1973"
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        return label
    }()
    
//     Track Distance
    
    lazy var raceDistance: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var raceDistanceTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Distância da Corrida"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var raceDistanceAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "305.879"
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        return label
    }()
    
    lazy var raceDistanceUnit: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "KM"
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.textColor = .gray
        return label
    }()
    
//     Track Record
    
    lazy var trackRecord: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .white
        return label
    }()
    
    lazy var trackRecordTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Record da Pista"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = .gray
        return label
    }()
    
    lazy var trackRecordAnswer: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "1.10.540"
        label.font = UIFont.boldSystemFont(ofSize: 45)
        label.textColor = .black
        return label
    }()
    
    lazy var trackRecordOwner: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Valtteri Bottas (2018)"
        label.font = UIFont.italicSystemFont(ofSize: 20)
        label.textColor = .gray
        return label
    }()
    
//    private func setupScrollView() {
//        let margins = layoutMarginsGuide
//        addSubview(scrollView)
//        scrollView.addSubview(trackBoard)
//        scrollView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
//        scrollView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
//        scrollView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
//        scrollView.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
//        trackBoard.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
//        trackBoard.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
//        trackBoard.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
//        trackBoard.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
//        trackBoard.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
//    }
    

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

        addSubview(trackBoard)
        addSubview(standignsBoard)

        
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
        
//        Stack Track Board

        trackBoard.self.addSubview(trackImage)
        
        trackBoard.self.addSubview(trackLenght)
        trackLenght.self.addSubview(trackLenghtTitle)
        trackLenght.self.addSubview(trackLenghtAnswer)
        trackLenght.self.addSubview(trackLenghtUnit)
        
        trackBoard.self.addSubview(trackLaps)
        trackLaps.self.addSubview(trackLapsTitle)
        trackLaps.self.addSubview(trackLapsAnswer)
        
        
        trackBoard.self.addSubview(firstRace)
        firstRace.self.addSubview(firstRacetitle)
        firstRace.self.addSubview(firstRaceAnswer)
        
        
        trackBoard.self.addSubview(raceDistance)
        raceDistance.self.addSubview(raceDistanceTitle)
        raceDistance.self.addSubview(raceDistanceAnswer)
        raceDistance.self.addSubview(raceDistanceUnit)
        
        
        trackBoard.self.addSubview(trackRecord)
        trackRecord.self.addSubview(trackRecordTitle)
        trackRecord.self.addSubview(trackRecordAnswer)
        trackRecord.self.addSubview(trackRecordOwner)
        
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
            
//            Standings Board
            
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
            
//            Track Board
            
            trackBoard.topAnchor.constraint(equalTo: topLabel.bottomAnchor),
            trackBoard.leadingAnchor.constraint(equalTo: leadingAnchor),
            trackBoard.trailingAnchor.constraint(equalTo: trailingAnchor),
            trackBoard.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -80),
            
            trackImage.topAnchor.constraint(equalTo: topLabel.bottomAnchor, constant: 30),
            trackImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            trackImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            trackImage.heightAnchor.constraint(equalToConstant: 300),
            
            trackLenght.topAnchor.constraint(equalTo: trackImage.bottomAnchor, constant: 15),
            trackLenght.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            trackLenght.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            trackLenght.heightAnchor.constraint(equalToConstant: 80),
            
            trackLaps.topAnchor.constraint(equalTo: trackLenght.bottomAnchor, constant: 15),
            trackLaps.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            trackLaps.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            trackLaps.heightAnchor.constraint(equalToConstant: 80),
            
            firstRace.topAnchor.constraint(equalTo: trackLaps.bottomAnchor, constant: 15),
            firstRace.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            firstRace.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            firstRace.heightAnchor.constraint(equalToConstant: 80),
            
            raceDistance.topAnchor.constraint(equalTo: firstRace.bottomAnchor, constant: 15),
            raceDistance.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            raceDistance.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            raceDistance.heightAnchor.constraint(equalToConstant: 80),
            
            trackRecord.topAnchor.constraint(equalTo: raceDistance.bottomAnchor, constant: 15),
            trackRecord.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            trackRecord.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            trackRecord.heightAnchor.constraint(equalToConstant: 100),
            
//            Track Lenght
            trackLenghtTitle.leadingAnchor.constraint(equalTo: trackLenght.leadingAnchor, constant: 5),
            trackLenghtTitle.topAnchor.constraint(equalTo: trackLenght.topAnchor, constant: 5),
            
            trackLenghtAnswer.trailingAnchor.constraint(equalTo: trackLenght.trailingAnchor, constant: -45),
            trackLenghtAnswer.bottomAnchor.constraint(equalTo: trackLenght.bottomAnchor, constant: -4),
            
            trackLenghtUnit.trailingAnchor.constraint(equalTo: trackLenght.trailingAnchor, constant: -15),
            trackLenghtUnit.bottomAnchor.constraint(equalTo: trackLenght.bottomAnchor, constant: -2),
            

            
//            Race Laps
            
            trackLapsTitle.leadingAnchor.constraint(equalTo: trackLaps.leadingAnchor, constant: 5),
            trackLapsTitle.topAnchor.constraint(equalTo: trackLaps.topAnchor, constant: 5),
            
            trackLapsAnswer.trailingAnchor.constraint(equalTo: trackLaps.trailingAnchor, constant: -45),
            trackLapsAnswer.bottomAnchor.constraint(equalTo: trackLaps.bottomAnchor, constant: -4),
            
//            Firt Race

            firstRacetitle.leadingAnchor.constraint(equalTo: firstRace.leadingAnchor, constant: 5),
            firstRacetitle.topAnchor.constraint(equalTo: firstRace.topAnchor, constant: 5),

            firstRaceAnswer.trailingAnchor.constraint(equalTo: firstRace.trailingAnchor, constant: -45),
            firstRaceAnswer.bottomAnchor.constraint(equalTo: firstRace.bottomAnchor, constant: -4),

//            Race Distance

            raceDistanceTitle.leadingAnchor.constraint(equalTo: raceDistance.leadingAnchor, constant: 5),
            raceDistanceTitle.topAnchor.constraint(equalTo: raceDistance.topAnchor, constant: 5),

            raceDistanceAnswer.trailingAnchor.constraint(equalTo: raceDistance.trailingAnchor, constant: -45),
            raceDistanceAnswer.bottomAnchor.constraint(equalTo: raceDistance.bottomAnchor, constant: -4),

            raceDistanceUnit.trailingAnchor.constraint(equalTo: raceDistance.trailingAnchor, constant: -15),
            raceDistanceUnit.bottomAnchor.constraint(equalTo: raceDistance.bottomAnchor, constant: -2),
            
//            Track Record
            
            trackRecordTitle.leadingAnchor.constraint(equalTo: trackRecord.leadingAnchor, constant: 5),
            trackRecordTitle.topAnchor.constraint(equalTo: trackRecord.topAnchor, constant: 5),
            
            trackRecordAnswer.trailingAnchor.constraint(equalTo: trackRecord.trailingAnchor, constant: -45),
            trackRecordAnswer.bottomAnchor.constraint(equalTo: trackRecord.bottomAnchor, constant: -25),
            
            trackRecordOwner.trailingAnchor.constraint(equalTo: trackRecord.trailingAnchor, constant: -40),
            trackRecordOwner.bottomAnchor.constraint(equalTo: trackRecord.bottomAnchor, constant: -2),
        ])
    }
}
