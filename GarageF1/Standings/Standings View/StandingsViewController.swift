//
//  StandingsViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 13/03/23.
//

import UIKit

enum StandingsTableViewSection: Int {
    case trackImage
    case circuitLenght
    case raceLaps
    case firstGrandPrix
    case raceDistance
    case trackRecord
}

class StandingsViewController: UIViewController, DriversViewModelDelegate {
    
    var standingsScreen: StandingsScreen? = StandingsScreen()
    var standingsViewModel: StandingsViewModel = StandingsViewModel()
    
    override func loadView() {
        view = standingsScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addElements()
        setupProtocols()
        standingsViewModel.fetchStandings(.request)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func addElements() {
        view.addSubview(backButton)
        buttonCircuit(buttonCircuitVC)
        buttonStandings(buttonStandingsVC)
    }
    
    private func setupProtocols() {
        standingsViewModel.delegate(delegate: self)
    }
    
    private func bestLapData() {
        self.standoutName.text = standingsViewModel.bestLapDataName
        self.standoutLap.text = standingsViewModel.bestLapDataTime
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
    
    lazy var backButton: UIButton = {
        let button: UIButton = standingsScreen?.backButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        return button
    }()
    
    lazy var standoutName: UILabel = {
        let label: UILabel = standingsScreen?.standingsHeader.standoutNameLabel ?? UILabel()
        return label
    }()
    
    lazy var standoutLap: UILabel = {
        let label: UILabel = standingsScreen?.standingsHeader.standoutTimeLabel ?? UILabel()
        return label
    }()
    
    
    @objc func buttonStandings(_ sender: UIButton) {
        if buttonStandingsVC.isSelected == false {
            buttonStandingsSelected()
        } else {
            buttonStandingsSelected()
        }
    }
    
    @objc func buttonCircuit(_ sender: UIButton) {
        if buttonCircuitVC.isSelected == false {
            buttonCircuitSelected()
        } else {
            buttonCircuitSelected()
        }
    }
        
        private func buttonStandingsSelected() {
            buttonStandingsVC.isSelected = true
            buttonCircuitVC.isSelected = false
            standingsScreen?.standingsBoardView.isHidden = false
            standingsScreen?.trackTableView.isHidden = true
            standingsScreen?.standingsTableView.reloadData()
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
        }
        
        private func buttonCircuitSelected() {
            buttonCircuitVC.isSelected = true
            buttonStandingsVC.isSelected = false
            standingsScreen?.standingsBoardView.isHidden = true
            standingsScreen?.trackTableView.isHidden = false
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
        }
    
    @objc func backScreen() {
        navigationController?.popViewController(animated: true)
    }
}


//MARK: - Extension config protocols

extension StandingsViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == standingsScreen?.standingsTableView {
            return (standingsViewModel.numberOfRowsResults)
        } else {
            return 6
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == standingsScreen?.trackTableView {
            switch StandingsTableViewSection(rawValue: indexPath.row){
            case .trackImage:
                let cell = tableView.dequeueReusableCell(withIdentifier: TrackImageCellScreen.identifier) as? TrackImageCellScreen
                cell?.configure()
                cell?.trackImage.image = standingsViewModel.getCircuitImage()
                cell?.selectedBackgroundView = standingsScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .circuitLenght:
                let cell = tableView.dequeueReusableCell(withIdentifier: CircuitLenghtCellScreen.identifier) as? CircuitLenghtCellScreen
                cell?.configure()
                cell?.trackLenghtAnswer.text = standingsViewModel.getCircuitLength()
                cell?.selectedBackgroundView = standingsScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .raceLaps:
                let cell = tableView.dequeueReusableCell(withIdentifier: RaceLapsCellScreen.identifier) as? RaceLapsCellScreen
                cell?.configure()
                cell?.trackLapsAnswer.text = standingsViewModel.getCircuitLaps()
                cell?.selectedBackgroundView = standingsScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .firstGrandPrix:
                let cell = tableView.dequeueReusableCell(withIdentifier: FirstGrandPrixCellScreen.identifier) as? FirstGrandPrixCellScreen
                cell?.configure()
                cell?.firstGrandPrixAnswer.text = standingsViewModel.getFirstGP()
                cell?.selectedBackgroundView = standingsScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .raceDistance:
                let cell = tableView.dequeueReusableCell(withIdentifier: RaceDistanceCellScreen.identifier) as? RaceDistanceCellScreen
                cell?.configure()
                cell?.raceDistanceAnswer.text = standingsViewModel.getRaceDistance()
                cell?.selectedBackgroundView = standingsScreen?.backgroundView
                return cell ?? UITableViewCell()
            case .trackRecord:
                let cell = tableView.dequeueReusableCell(withIdentifier: TrackRecordCellScreen.identifier) as? TrackRecordCellScreen
                cell?.configure()
                cell?.trackRecordAnswer.text = standingsViewModel.getTrackRecord()
                cell?.trackRecordOwner.text = standingsViewModel.getTrackRecordDriver()
                cell?.trackRecordYear.text = standingsViewModel.getTrackRecordYear()
                cell?.selectedBackgroundView = standingsScreen?.backgroundView
                return cell ?? UITableViewCell()
            default:
                return UITableViewCell()
            }
        } else {
            let cell: StandingsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: StandingsTableViewCell.identifier) as? StandingsTableViewCell
            cell?.setupCell(data: standingsViewModel.loadCurrentDriver(indexPath: indexPath))
            cell?.selectedBackgroundView = standingsScreen?.backgroundView
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == standingsScreen?.standingsTableView {
            return 45
        } else {
            if indexPath.row == 0 {
                return 350
            } else {
                return 105
            }
        }
    }
}

extension StandingsViewController: StandingsViewModelDelegate {
    func success() {
        standingsScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        reloadTableView()
    }
    
    func error(_ message: String) {
    
    }
}

extension StandingsViewController: StandingsViewModelProtocol {
    func reloadTableView() {
        DispatchQueue.main.async {
            self.standingsScreen?.standingsTableView.reloadData()
            self.bestLapData()
        }
    }
}
    

