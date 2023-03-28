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
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
        } else {
            buttonStandingsVC.isSelected = true
            buttonCircuitVC.isSelected = false
            standingsScreen?.standingsBoard.isHidden = false
            standingsScreen?.tableViewTrack.isHidden = true
            standingsScreen?.tableViewStandings.reloadData()
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
        }
    }
    
    @objc func buttonCircuit(_ sender: UIButton) {
        if buttonCircuitVC.isSelected == false {
            buttonCircuitVC.isSelected = true
            buttonStandingsVC.isSelected = false
            standingsScreen?.standingsBoard.isHidden = true
            standingsScreen?.tableViewTrack.isHidden = false
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
        } else {
            buttonCircuitVC.isSelected = true
            buttonStandingsVC.isSelected = false
            standingsScreen?.standingsBoard.isHidden = true
            standingsScreen?.tableViewTrack.isHidden = false
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1), for: .normal)
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1), for: .normal)
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
            return (standingsViewModel.numberOfRowsResults)
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
                cell?.trackImage.image = standingsViewModel.getCircuitImage()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: CircuitLenghtCellScreen.identifier) as? CircuitLenghtCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.trackLenghtAnswer.text = standingsViewModel.getCircuitLength()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: RaceLapsCellScreen.identifier) as? RaceLapsCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.trackLapsAnswer.text = standingsViewModel.getCircuitLaps()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: FirstGrandPrixCellScreen.identifier) as? FirstGrandPrixCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.firstGrandPrixAnswer.text = standingsViewModel.getFirstGP()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: RaceDistanceCellScreen.identifier) as? RaceDistanceCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.raceDistanceAnswer.text = standingsViewModel.getRaceDistance()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: TrackRecordCellScreen.identifier) as? TrackRecordCellScreen
                cell?.configure()
                let backgroundView = UIView()
                cell?.trackRecordAnswer.text = standingsViewModel.getTrackRecord()
                cell?.trackRecordOwner.text = standingsViewModel.getTrackRecordDriver()
                cell?.trackRecordYear.text = standingsViewModel.getTrackRecordYear()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
        }
        } else {
            let cell: StandingsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: StandingsTableViewCell.identifier) as? StandingsTableViewCell
            cell?.setupCell(data: standingsViewModel.loadCurrentDriver(indexPath: indexPath))
            let backgroundView = UIView()
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
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
                return 105
            }
        }
    }
}
    

