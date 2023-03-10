//
//  DriversViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversViewController: UIViewController {
    
    let driversScreen: DriversScreenView? = DriversScreenView()
    let driversViewModel: DriversViewModel = DriversViewModel()

    override func loadView() {
      view = driversScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        driversScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }    
}

extension DriversViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return driversViewModel.dataDriversScreen.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DriversCustomTableViewCell") as? DriversCustomTableViewCell
        cell?.setupCell(driver: driversViewModel.loadCurrentDriver(indexPath: indexPath))
        let backgroundView = UIView()
        backgroundView.backgroundColor = .none
        cell?.selectedBackgroundView = backgroundView
        return cell ?? UITableViewCell()
        
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DriversDetailViewController()
        self.navigationController?.pushViewController(vc, animated: true)
        vc.nameDriver = driversViewModel.getDriverName(indexPath: indexPath)
        vc.lastNameDriver = driversViewModel.getDriverLastName(indexPath: indexPath)
        vc.driverPhoto = driversViewModel.getDriverPhoto(indexPath: indexPath)
        vc.birthDate = driversViewModel.getBirthDate(indexPath: indexPath)
        vc.birthLocation = driversViewModel.getBirthLocation(indexPath: indexPath)
        vc.championshipsWon = driversViewModel.getChampionshipsWon(indexPath: indexPath)
        vc.racesParticipated = driversViewModel.getRacesParticipated(indexPath: indexPath)
        vc.podiumsEarned = driversViewModel.getPodiumsEarned(indexPath: indexPath)
        vc.pointsEarned = driversViewModel.getPointsEarned(indexPath: indexPath)
        vc.bestPositionRaces = driversViewModel.getBestPositionRaces(indexPath: indexPath)
        vc.bestGridPosition = driversViewModel.getBestGridPosition(indexPath: indexPath)
    }
}
