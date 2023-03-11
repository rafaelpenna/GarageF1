//
//  FirstDriverVC.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 11/03/23.
//

import UIKit

class FirstDriverVC: UIViewController {
    
    let firstDriverScreen: FirstDriverScreen = FirstDriverScreen()
    
    var birthDate = "30/09/1997 (25 anos)"
    var birthLocation = "Hasselt, Belgica"
    var championshipsWon = "2"
    var racesParticipated = "163"
    var podiumsEarned = "77"
    var pointsEarned = "2011"
    var bestPositionRaces = "1(x35)"
    var bestGridPosition = "1"
    
    override func loadView() {
        view = firstDriverScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        firstDriverScreen.delegate(delegate: self)
        firstDriverScreen.setupTableViewProtocols(delegate: self, dataSource: self)
    
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
}

extension FirstDriverVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewBirthDateCellScreen.identifier) as? TableViewBirthDateCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.birthDateAnswer.text = birthDate
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewBirthLocationCellScreen.identifier) as? TableViewBirthLocationCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.birbirthLocationAnswer.text = birthLocation
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewChampionshipsWinCellScreen.identifier) as? TableViewChampionshipsWinCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.championshipsWinAnswer.text = championshipsWon
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewRacesCustomTCellScreen.identifier) as? TableViewRacesCustomTCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.racesAnswer.text = racesParticipated
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewPodiumsCustomCellScreen.identifier) as? TableViewPodiumsCustomCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.podiumsAnswer.text = podiumsEarned
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewPointsCustomCellScreen.identifier) as? TableViewPointsCustomCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.pointsAnswer.text = pointsEarned
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewBestRacePositionCustomCellScreen.identifier) as? TableViewBestRacePositionCustomCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.bestRacePositionAnswer.text = bestPositionRaces
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: TableViewBestGridPositionCustomCellScreen.identifier) as? TableViewBestGridPositionCustomCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.bestGridPositionAnswer.text = bestGridPosition
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

    extension FirstDriverVC: firstDriverScreenProtocol {
        func tappedBackButton() {
            self.navigationController?.popViewController(animated: true)
        }
    }
    

