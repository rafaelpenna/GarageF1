//
//  TableInfoLetViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class TableInfoLetViewController: UIViewController {
    
    var driversBirthDate = ""
    var driversBirthLocation = ""
    var championshipsWon = ""
    var racesParticipated = ""
    var podiumsEarned = ""
    var pointsEarned = ""
    var wins = ""

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}

extension TableInfoLetViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthDateCustomTableViewCell.identifier) as? DuelBirthDateCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
            cell?.birthDateAnswer.text = driversBirthDate
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthLocationCustomTableViewCell.identifier) as? DuelBirthLocationCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
            cell?.birthLocationAnswer.text = driversBirthLocation
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelChampionshipsWonCustomTableViewCell.identifier) as? DuelChampionshipsWonCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
            cell?.championshipsWinAnswer.text = championshipsWon
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelRacesParticipatedCustomTableViewCell.identifier) as? DuelRacesParticipatedCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
            cell?.racesAnswer.text = racesParticipated
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelPodiumsEarnedCustomTableViewCell.identifier) as? DuelPodiumsEarnedCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
            cell?.podiumsAnswer.text = podiumsEarned
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelPointsEarnedCustomTableViewCell.identifier) as? DuelPointsEarnedCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
            cell?.pointsAnswer.text = pointsEarned
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: DuelWinsCustomTableViewCell.identifier) as? DuelWinsCustomTableViewCell
            cell?.configure()
            let backgroundView = UIView()
            cell?.winsAnswer.text = wins
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        }

    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
}
