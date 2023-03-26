//
//  HomeVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 07/01/23.
//

import UIKit

class HomeVC: UIViewController {
    
    let homeScreen: HomeScreen = HomeScreen()
    let simulationButtonTableViewCell: FullResultButtonTableViewCell? = FullResultButtonTableViewCell()
    let standingCustom: StandingCustomTableViewCell = StandingCustomTableViewCell()
    let duelStackVC: DuelViewController = DuelViewController()
    let driversVC: DriversViewController = DriversViewController()
    let constructorsVC: ConstructorsFullResultVC = ConstructorsFullResultVC()
    
    override func loadView() {
        view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen.configTableViewProtocols(delegate: self, dataSource: self)
        homeScreen.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }

}


extension HomeVC: UITableViewDelegate, UITableViewDataSource {

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let backgroundView = UIView()
        
        
        if tableView == homeScreen.superTableView {
                if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: StandingCustomTableViewCell.identifier, for: indexPath) as? StandingCustomTableViewCell
                cell?.selectedBackgroundView = backgroundView
                cell?.delegate(delegate: self)
                backgroundView.backgroundColor = .none
                return cell ?? UITableViewCell()
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DDuelCustomTableViewCell.identifier, for: indexPath) as? DDuelCustomTableViewCell
                cell?.selectedBackgroundView = backgroundView
                backgroundView.backgroundColor = .none
                cell?.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1.0)
                return cell ?? UITableViewCell()
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: SimulationButtonTableViewCell.identifier, for: indexPath) as? SimulationButtonTableViewCell
                cell?.configure()
                cell?.delegate(delegate: self)
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                cell?.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1.0)
                return cell ?? UITableViewCell()
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: FullResultsTableViewCell.identifier, for: indexPath) as? FullResultsTableViewCell
                cell?.selectedBackgroundView = backgroundView
                backgroundView.backgroundColor = .none
                cell?.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1.0)
                return cell ?? UITableViewCell()
            } else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: FullResultButtonTableViewCell.identifier, for: indexPath) as? FullResultButtonTableViewCell
                cell?.configure()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                cell?.backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1.0)
                cell?.delegate(delegate: self)
                return cell ?? UITableViewCell()
            }
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == homeScreen.superTableView {
            if indexPath.row == 0 {
                return 270
            } else if indexPath.row == 1 {
                return 275
            } else if indexPath.row == 2 {
                return 35
            } else if indexPath.row == 3 {
                return 455
            } else if indexPath.row == 4 {
                return 45
            }
        }
        return 80
    }

}

extension HomeVC: FullResultButtonTableViewCellProtocol {
    func actionFullResultButton() {
        self.navigationController?.pushViewController(constructorsVC, animated: true)
    }
}

extension HomeVC: SimulationButtonTableViewCellProtocol {
    func actionSimulationButton() {
        self.navigationController?.pushViewController(duelStackVC, animated: true)
    }
}

extension HomeVC: StandingCustomTableViewCellProtocol {
    
    func callSecondDrive() {
        let secondDriver: SecondDriverVC = SecondDriverVC()
        self.navigationController?.pushViewController(secondDriver, animated: true)
    }
    
    func callFirstDrive() {
        let firstDriver: FirstDriverVC = FirstDriverVC()
        self.navigationController?.pushViewController(firstDriver, animated: true)
    }
}




