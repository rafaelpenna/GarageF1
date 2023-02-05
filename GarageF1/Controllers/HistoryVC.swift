//
//  HistoryVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 21/01/23.
//

import UIKit

class HistoryVC: UIViewController {
    
    var historyScreen: HistoryScreen? = HistoryScreen()
    
    var dataDrivers: [DriversHistory] = [DriversHistory(position: "1", driversName: "Charles ", lastName: "Leclerc", teamsName: "Ferrari", seasonPoints: "86"),
        DriversHistory(position: "2", driversName: "Max ", lastName: "Verstappen", teamsName: "Red Bull Racing", seasonPoints: "80"),
        DriversHistory(position: "3", driversName: "Sergio ", lastName: "Perez", teamsName: "Red Bull Racing", seasonPoints: "74"),
        DriversHistory(position: "4", driversName: "Carlos ", lastName: "Sainz", teamsName: "Ferrari", seasonPoints: "62"),
        DriversHistory(position: "5", driversName: "Lando ", lastName: "Norris", teamsName: "McLaren", seasonPoints: "55"),
        DriversHistory(position: "6", driversName: "Lewis ", lastName: "Hamilton", teamsName: "Mercedes", seasonPoints: "42"),
        DriversHistory(position: "7", driversName: "Sebastian ", lastName: "Vettel", teamsName: "Aston Martin", seasonPoints: "33"),
        DriversHistory(position: "8", driversName: "Valtteri ", lastName: "Bottas", teamsName: "Alfa Romeo", seasonPoints: "28"),
        DriversHistory(position: "9", driversName: "George ", lastName: "Russel", teamsName: "Mercedes", seasonPoints: "24")]
    
    var dataTeams: [TeamsHistory] = [TeamsHistory(position: "1", teamsName: "Ferrari", seasonPoints: "613"),
                                     TeamsHistory(position: "2", teamsName: "Red Bull Racing", seasonPoints: "585"),
                                     TeamsHistory(position: "3", teamsName: "Mercedes", seasonPoints: "343"),
                                     TeamsHistory(position: "4", teamsName: "McLaren", seasonPoints: "375"),
                                     TeamsHistory(position: "5", teamsName: "Aston Martin", seasonPoints: "255"),
                                     TeamsHistory(position: "6", teamsName: "Alpha Tauri", seasonPoints: "142"),
                                     TeamsHistory(position: "7", teamsName: "Alpine", seasonPoints: "77"),
                                     TeamsHistory(position: "8", teamsName: "Haas F1 Team", seasonPoints: "23"),
                                     TeamsHistory(position: "9", teamsName: "Williams", seasonPoints: "15"),
                                     TeamsHistory(position: "10", teamsName: "Alfa Romeo", seasonPoints: "0")]
    
    
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
            historyScreen?.tableViewDrivers.reloadData()
            historyScreen?.driversButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            historyScreen?.teamsButton.setTitleColor(.darkGray, for: .normal)
        } else {
            buttonDriversVC.isSelected = true
            buttonTeamsVC.isSelected = false
            historyScreen?.tableViewDrivers.reloadData()
            historyScreen?.driversButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            historyScreen?.teamsButton.setTitleColor(.darkGray, for: .normal)
        }
    }
    
    @objc func buttonTeams(_ sender: UIButton) {
        if buttonTeamsVC.isSelected == false {
            buttonTeamsVC.isSelected = true
            buttonDriversVC.isSelected = false
            historyScreen?.tableViewTeams.reloadData()
            historyScreen?.teamsButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            historyScreen?.driversButton.setTitleColor(.darkGray, for: .normal)
        } else {
            buttonTeamsVC.isSelected = true
            buttonDriversVC.isSelected = false
            historyScreen?.tableViewTeams.reloadData()
            historyScreen?.teamsButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            historyScreen?.driversButton.setTitleColor(.darkGray, for: .normal)
        }
    }
    

}

extension HistoryVC: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if buttonDriversVC.isSelected == true {
                return dataDrivers.count
            } else {
                return dataTeams.count
            }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            if buttonDriversVC.isSelected == true {
                let cell: HistoryDriversTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryDriversTableViewCell.identifier) as? HistoryDriversTableViewCell
                cell?.setupCell(data: dataDrivers[indexPath.row])
                return cell ?? UITableViewCell()
            } else {
                let cell: HistoryTeamsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: HistoryTeamsTableViewCell.identifier) as? HistoryTeamsTableViewCell
                cell?.setupCell(data: dataTeams[indexPath.row])
                tableView.reloadData()
                return cell ?? UITableViewCell()
            }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 85
    }
        
}

