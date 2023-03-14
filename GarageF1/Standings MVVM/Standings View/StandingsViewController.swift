//
//  StandingsViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

class StandingsViewController: UIViewController {
    
    var standingsScreen: StandingsScreen? = StandingsScreen()
    var standingsViewModel: StandingsViewModel = StandingsViewModel()
    
    
    var nameDriverBestLap: String? {
        get {
            return standingsViewModel.dataBestLap.nameDriver
        }
    }
    
    var timeBestLap: String? {
        get {
            return standingsViewModel.dataBestLap.bestTime
        }
    }
    
    var trackImage: UIImage? {
        get {
            return standingsViewModel.dataTracks.circuitImage
        }
    }
    
    var circuitLenght: String? {
        get {
            return standingsViewModel.dataTracks.circuitLength
        }
    }
    var raceLaps: String? {
        get {
            return standingsViewModel.dataTracks.circuitLaps
        }
    }
    var firstGP: String? {
        get {
            return standingsViewModel.dataTracks.firstGP
        }
    }
    var raceDistance: String? {
        get {
            return standingsViewModel.dataTracks.raceDistance
        }
    }
    var trackRecord: String? {
        get {
            return standingsViewModel.dataTracks.trackRecord
        }
    }
    var trackRecordOwner: String? {
        get {
            return standingsViewModel.dataTracks.trackRecordDriver
        }
    }
    var trackRecordYear: String? {
        get {
            return standingsViewModel.dataTracks.trackRecordYear
        }
    }
    
    override func loadView() {
        view = standingsScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(backButton)
        standingsScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        buttonCircuit(buttonCircuitVC)
        buttonStandings(buttonStandingsVC)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    
    lazy var buttonStandingsVC: UIButton = {
        let button: UIButton = standingsScreen?.standingsButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(self.buttonStandings(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonCircuitVC: UIButton = {
        let button: UIButton = standingsScreen?.trackButton ?? UIButton()
        button.isSelected = false
        button.addTarget(self, action: #selector(self.buttonCircuit(_:)), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonStandings(_ sender: UIButton) {
        if buttonStandingsVC.isSelected == false {
            buttonStandingsVC.isSelected = true
            buttonCircuitVC.isSelected = false
            standingsScreen?.standingsBoard.isHidden = false
            standingsScreen?.tableViewTrack.isHidden = true
            standingsScreen?.tableViewStandings.reloadData()
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            standingsScreen?.trackButton.setTitleColor(.darkGray, for: .normal)
        } else {
            buttonStandingsVC.isSelected = true
            buttonCircuitVC.isSelected = false
            standingsScreen?.standingsBoard.isHidden = false
            standingsScreen?.tableViewTrack.isHidden = true
            standingsScreen?.tableViewStandings.reloadData()
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            standingsScreen?.trackButton.setTitleColor(.darkGray, for: .normal)
        }
    }
    
    @objc func buttonCircuit(_ sender: UIButton) {
        if buttonCircuitVC.isSelected == false {
            buttonCircuitVC.isSelected = true
            buttonStandingsVC.isSelected = false
            standingsScreen?.standingsBoard.isHidden = true
            standingsScreen?.tableViewTrack.isHidden = false
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            standingsScreen?.standingsButton.setTitleColor(.darkGray, for: .normal)
        } else {
            buttonCircuitVC.isSelected = true
            buttonStandingsVC.isSelected = false
            standingsScreen?.standingsBoard.isHidden = true
            standingsScreen?.tableViewTrack.isHidden = false
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            standingsScreen?.standingsButton.setTitleColor(.darkGray, for: .normal)
        }
    }
    
    lazy var backButton: UIButton = {
        let button: UIButton = standingsScreen?.backButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        return button
    }()

    @objc func backScreen() {
        navigationController?.popViewController(animated: true)
    }
}

extension StandingsViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == standingsScreen?.tableViewStandings {
            return (standingsViewModel.dataStandings.count)
        } else {
            return 6
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == standingsScreen?.tableViewTrack {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: TrackImageCellScreen.identifier) as? TrackImageCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.trackImage.image = trackImage
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: CircuitLenghtCellScreen.identifier) as? CircuitLenghtCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.trackLenghtAnswer.text = circuitLenght
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: RaceLapsCellScreen.identifier) as? RaceLapsCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.trackLapsAnswer.text = raceLaps
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: FirstGrandPrixCellScreen.identifier) as? FirstGrandPrixCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.firstGrandPrixAnswer.text = firstGP
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: RaceDistanceCellScreen.identifier) as? RaceDistanceCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.raceDistanceAnswer.text = raceDistance
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: TrackRecordCellScreen.identifier) as? TrackRecordCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.trackRecordAnswer.text = trackRecord
                cell?.trackRecordOwner.text = trackRecordOwner
                cell?.trackRecordYear.text = trackRecordYear
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
        }
        } else {
            let cell: StandingsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: StandingsTableViewCell.identifier) as? StandingsTableViewCell
            cell?.setupCell(data: standingsViewModel.dataStandings[indexPath.row])
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == standingsScreen?.tableViewStandings {
            return 45
        } else {
            if indexPath.row == 0 {
                return 350
            } else {
                return 100
            }
        }
    }
}
    

