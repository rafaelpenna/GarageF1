//
//  RaceViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import UIKit

class RaceViewController: UIViewController, DriversViewModelDelegate {
    
    var racesScreen: RacesScreen?
    let racesViewModel: RacesViewModel = RacesViewModel()
    
    override func loadView() {
        racesScreen = RacesScreen()
        view = racesScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProtocols()
        racesViewModel.fetchRaces(.request)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func setupProtocols() {
        racesViewModel.delegate(delegate: self)
    }
}

extension RaceViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return racesViewModel.numberOfRows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RacesCustomTableViewCell.identifier) as? RacesCustomTableViewCell
        cell?.setupCell(driver: racesViewModel.loadCurrentRace(indexPath: indexPath))
        let backgroundView = UIView()
        backgroundView.backgroundColor = .none
        cell?.selectedBackgroundView = backgroundView
        return cell ?? UITableViewCell()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = StandingsViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        vc.selectedRound = indexPath.row
        vc.circuitCountryNameLabel = racesViewModel.getRaceCountry(indexPath: indexPath)
    }
}

extension RaceViewController: RacesViewModelDelegate {
    func success() {
        racesScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        reloadTableView()
    }
    
    func error(_ message: String) {
    
    }
}

extension RaceViewController: RacesViewModelProtocol {
    func reloadTableView() {
        DispatchQueue.main.async {
            self.racesScreen?.infoRacesTableView.reloadData()
        }
    }
}
