//
//  DriversViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

class DriversViewController: UIViewController {
    
    var driversScreen: DriversScreenView?
    let driversViewModel: DriversViewModel = DriversViewModel()

    override func loadView() {
        driversScreen = DriversScreenView()
      view = driversScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupProtocols()
        driversViewModel.fetch(.request)
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func setupProtocols() {
        driversViewModel.delegate(delegate: self)
    }
}

//MARK: - Extension config protocols

extension DriversViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return driversViewModel.numberOfRows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DriversCustomTableViewCell.identifier) as? DriversCustomTableViewCell
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
        vc.position = driversViewModel.getDriverPosition(indexPath: indexPath)
        vc.points = driversViewModel.getDriverPoints(indexPath: indexPath)
        vc.code = driversViewModel.getDriverCode(indexPath: indexPath)
        vc.permanentNumber = driversViewModel.getPermanentNumber(indexPath: indexPath)
        vc.wins = driversViewModel.getDriverNumberWins(indexPath: indexPath)
    }
}

extension DriversViewController: DriversViewModelDelegate {
    func success() {
        driversScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        reloadTableView()
    }
    
    func error(_ message: String) {
    
    }
}

extension DriversViewController: DriversViewModelProtocol {
    func reloadTableView() {
        self.driversScreen?.infoDriversTableView.reloadData()
    }
}
