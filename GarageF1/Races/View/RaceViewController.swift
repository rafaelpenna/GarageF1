//
//  RaceViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 25/03/23.
//

import UIKit

class RaceViewController: UIViewController {
    
    let racesScreen: RacesScreen? = RacesScreen()
    let racesViewModel: RacesViewModel = RacesViewModel()

    override func loadView() {
      view = racesScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupProtocols()
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func setupProtocols() {
        racesScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
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
    }
}
