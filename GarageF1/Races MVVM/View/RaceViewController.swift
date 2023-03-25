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
        racesScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
}

extension RaceViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return racesViewModel.numberOfRows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RacesCustomTableViewCell") as? RacesCustomTableViewCell
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
//        vc.nameDriver = driversViewModel.getDriverName(indexPath: indexPath)
//        vc.lastNameDriver = driversViewModel.getDriverLastName(indexPath: indexPath)
//        vc.driverPhoto = driversViewModel.getDriverPhoto(indexPath: indexPath)
//        vc.birthDate = driversViewModel.getBirthDate(indexPath: indexPath)
//        vc.birthLocation = driversViewModel.getBirthLocation(indexPath: indexPath)
//        vc.championshipsWon = driversViewModel.getChampionshipsWon(indexPath: indexPath)
//        vc.racesParticipated = driversViewModel.getRacesParticipated(indexPath: indexPath)
//        vc.podiumsEarned = driversViewModel.getPodiumsEarned(indexPath: indexPath)
//        vc.pointsEarned = driversViewModel.getPointsEarned(indexPath: indexPath)
//        vc.bestPositionRaces = driversViewModel.getBestPositionRaces(indexPath: indexPath)
//        vc.bestGridPosition = driversViewModel.getBestGridPosition(indexPath: indexPath)
    }
}
