//
//  Standings.TrackVC.swift
//  GarageF1
//
//  Created by Rafael Penna on 03/02/23.
//

import UIKit

class StandingsTrackVC: UIViewController {
    
    var standingsScreen: StandignsTrackScreen? = StandignsTrackScreen()
    
    var dataStandings: [Standings] = [Standings(position: "1", teamsName: "Mercedes", driversCode: "RUS", time: "1:38:34.044", currentcurrentPoints: "26"),
                                      Standings(position: "2", teamsName: "Mercedes", driversCode: "HAM", time: "+ 1.529s", currentcurrentPoints: "18"),
                                      Standings(position: "3", teamsName: "Ferrari", driversCode: "SAI", time: "+ 4.051s", currentcurrentPoints: "15"),
                                      Standings(position: "4", teamsName: "Ferrari", driversCode: "LEC", time: "+ 8.441s", currentcurrentPoints: "12"),
                                      Standings(position: "5", teamsName: "Alpine", driversCode: "ALO", time: "+ 9.561s", currentcurrentPoints: "10"),
                                      Standings(position: "6", teamsName: "Red Bull Racing", driversCode: "VER", time: "+ 10.056s", currentcurrentPoints: "8"),
                                      Standings(position: "7", teamsName: "Red Bull Racing", driversCode: "PER", time: "+ 14.08s", currentcurrentPoints: "6"),
                                      Standings(position: "8", teamsName: "Alpine", driversCode: "OCO", time: "+ 18.69s", currentcurrentPoints: "4"),
                                      Standings(position: "9", teamsName: "Alfa Romeo", driversCode: "BOT", time: "+ 22.552s", currentcurrentPoints: "2"),
                                      Standings(position: "10", teamsName: "Aston Martin", driversCode: "STR", time: "+ 23.552s", currentcurrentPoints: "1"),
                                      Standings(position: "11", teamsName: "Aston Martin", driversCode: "VET", time: "+ 26.183s", currentcurrentPoints: "0"),
                                      Standings(position: "12", teamsName: "Alfa Romeo", driversCode: "ZHO", time: "+ 29.325s", currentcurrentPoints: "0"),
                                      Standings(position: "13", teamsName: "F1 Haas", driversCode: "MSC", time: "+ 29.899s", currentcurrentPoints: "0"),]
    
    
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
            standingsScreen?.standignsBoard.isHidden = false
            standingsScreen?.trackBoard.isHidden = true
            standingsScreen?.tableViewStandings.reloadData()
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            standingsScreen?.trackButton.setTitleColor(.darkGray, for: .normal)
        } else {
            buttonStandingsVC.isSelected = true
            buttonCircuitVC.isSelected = false
            standingsScreen?.standignsBoard.isHidden = false
            standingsScreen?.trackBoard.isHidden = true
            standingsScreen?.tableViewStandings.reloadData()
            standingsScreen?.standingsButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            standingsScreen?.trackButton.setTitleColor(.darkGray, for: .normal)
        }
    }
    
    @objc func buttonCircuit(_ sender: UIButton) {
        if buttonCircuitVC.isSelected == false {
            buttonCircuitVC.isSelected = true
            buttonStandingsVC.isSelected = false
            standingsScreen?.standignsBoard.isHidden = true
            standingsScreen?.trackBoard.isHidden = false
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            standingsScreen?.standingsButton.setTitleColor(.darkGray, for: .normal)
        } else {
            buttonCircuitVC.isSelected = true
            buttonStandingsVC.isSelected = false
            standingsScreen?.standignsBoard.isHidden = true
            standingsScreen?.trackBoard.isHidden = false
            standingsScreen?.trackButton.setTitleColor(UIColor(red: 255, green: 245, blue: 245, alpha: 1), for: .normal)
            standingsScreen?.standingsButton.setTitleColor(.darkGray, for: .normal)
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

extension StandingsTrackVC: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataStandings.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: StandingsTableViewCell? = tableView.dequeueReusableCell(withIdentifier: StandingsTableViewCell.identifier) as? StandingsTableViewCell
        cell?.setupCell(data: dataStandings[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 45
    }
        
}
