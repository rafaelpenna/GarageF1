//
//  DriversViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 10/02/23.
//

import UIKit

protocol DriversViewControllerProtocol: AnyObject {
    func passDriverData(data: DriverStandingDriversModel)
}

class DriversViewController: UIViewController {
    
    var driversScreen: DriversScreenView?
    let driversViewModel: DriversViewModel = DriversViewModel()
    
    weak private var delegate: DriversViewControllerProtocol?
    public func delegate(delegate: DriversViewControllerProtocol?) {
        self.delegate = delegate
    }

    override func loadView() {
        driversScreen = DriversScreenView()
        view = driversScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupProtocols()
        loadData()
    }

    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func setupProtocols() {
        driversViewModel.delegate(delegate: self)
    }
    
    private func loadData() {
        driversViewModel.fetch(.request)
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
        let vc = DriversDetailViewController(data: driversViewModel.loadCurrentDriver(indexPath: indexPath))
        self.navigationController?.pushViewController(vc, animated: true)
        delegate?.passDriverData(data: driversViewModel.loadCurrentDriver(indexPath: indexPath))
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
