//
//  HistoryViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 27/02/23.
//

import UIKit

class HistoryViewController: UIViewController {
    
    let historyScreen: HistoryScreenView? = HistoryScreenView()
    let historyViewModel: HistoryViewModel = HistoryViewModel()
    
    override func loadView() {
        view = historyScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        historyScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        buttonTeams(buttonTeamsVC)
        buttonDrivers(buttonDriversVC)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }

    
    lazy var buttonDriversVC: UIButton = {
        let button: UIButton = historyScreen?.driversButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(self.buttonDrivers(_:)), for: .touchUpInside)
        return button
    }()
    
    lazy var buttonTeamsVC: UIButton = {
        let button: UIButton = historyScreen?.teamsButton ?? UIButton()
        button.isSelected = false
        button.addTarget(self, action: #selector(self.buttonTeams(_:)), for: .touchUpInside)
        return button
    }()
    
    @objc func buttonDrivers(_ sender: UIButton) {
        if buttonDriversVC.isSelected == false {
            buttonDriversVC.isSelected = true
            buttonTeamsVC.isSelected = false
            historyScreen?.tableViewDrivers.isHidden = false
            historyScreen?.tableViewTeams.isHidden = true
            historyScreen?.tableViewDrivers.reloadData()
            historyScreen?.driversButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            historyScreen?.teamsButton.setTitleColor(.darkGray, for: .normal)
        } else {
            buttonDriversVC.isSelected = true
            buttonTeamsVC.isSelected = false
            historyScreen?.tableViewDrivers.isHidden = false
            historyScreen?.tableViewTeams.isHidden = true
            historyScreen?.tableViewDrivers.reloadData()
            historyScreen?.driversButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            historyScreen?.teamsButton.setTitleColor(.darkGray, for: .normal)
        }
    }
    
    @objc func buttonTeams(_ sender: UIButton) {
        if buttonTeamsVC.isSelected == false {
            buttonTeamsVC.isSelected = true
            buttonDriversVC.isSelected = false
            historyScreen?.tableViewDrivers.isHidden = true
            historyScreen?.tableViewTeams.isHidden = false
            historyScreen?.tableViewTeams.reloadData()
            historyScreen?.teamsButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            historyScreen?.driversButton.setTitleColor(.darkGray, for: .normal)
        } else {
            buttonTeamsVC.isSelected = true
            buttonDriversVC.isSelected = false
            historyScreen?.tableViewDrivers.isHidden = true
            historyScreen?.tableViewTeams.isHidden = false
            historyScreen?.tableViewTeams.reloadData()
            historyScreen?.teamsButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            historyScreen?.driversButton.setTitleColor(.darkGray, for: .normal)
        }
    }
    

}

extension HistoryViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if buttonDriversVC.isSelected == true {
                return historyViewModel.dataDrivers.count
            } else {
                return historyViewModel.dataTeams.count
            }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if historyScreen?.tableViewDrivers.isHidden == false {
                let cell: HistoryDriversTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryDriversTableViewCell.identifier) as? HistoryDriversTableViewCell
            cell?.setupCell(data: historyViewModel.dataDrivers[indexPath.row])
                return cell ?? UITableViewCell()
            } else {
                let cell: HistoryTeamsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryTeamsTableViewCell.identifier) as? HistoryTeamsTableViewCell
                cell?.setupCell(data: historyViewModel.dataTeams[indexPath.row])
                return cell ?? UITableViewCell()
            }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 85
    }
        
}
