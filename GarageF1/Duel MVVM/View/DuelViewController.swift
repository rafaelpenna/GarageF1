//
//  DuelViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 07/03/23.
//

import UIKit

class DuelViewController: UIViewController {
    
    var duelScreen: DuelScreenView? = DuelScreenView()
    var duelViewModel: DuelViewModel? = DuelViewModel()
    
    
    var nameDriverLeft: String? {
        get {
            return duelViewModel?.dataDriversLeft.driversName
        }
    }
    var lastNameDriverLeft: String? {
        get {
            return duelViewModel?.dataDriversLeft.driversLastName
        }
    }
    var birthDateLeft: String? {
        get {
            return duelViewModel?.dataDriversLeft.driversBirthDate
        }
    }
    var birthLocationLeft: String? {
        get {
            return duelViewModel?.dataDriversLeft.driversBirthPlace
        }
    }
    var championshipsWonLeft: String? {
        get {
            return duelViewModel?.dataDriversLeft.championshipsWon
        }
    }
    var racesParticipatedLeft: String? {
        get {
            return duelViewModel?.dataDriversLeft.racesParticipated
        }
    }
    var podiumsEarnedLeft: String? {
        get {
            return duelViewModel?.dataDriversLeft.podiumsWon
        }
    }
    var pointsEarnedLeft: String? {
        get {
            return duelViewModel?.dataDriversLeft.pointsEarned
        }
    }
    var winsLeft: String? {
        get {
            return duelViewModel?.dataDriversLeft.wins
        }
    }
    
    
    var nameDriverRight: String? {
        get {
            return duelViewModel?.dataDriversRight.driversName
        }
    }
    var lastNameDriverRight: String? {
        get {
            return duelViewModel?.dataDriversRight.driversLastName
        }
    }
    var birthDateRight: String? {
        get {
            return duelViewModel?.dataDriversRight.driversBirthDate
        }
    }
    var birthLocationRight: String? {
        get {
            return duelViewModel?.dataDriversRight.driversBirthPlace
        }
    }
    var championshipsWonRight: String? {
        get {
            return duelViewModel?.dataDriversRight.championshipsWon
        }
    }
    var racesParticipatedRight: String? {
        get {
            return duelViewModel?.dataDriversRight.racesParticipated
        }
    }
    var podiumsEarnedRight: String? {
        get {
            return duelViewModel?.dataDriversRight.podiumsWon
        }
    }
    var pointsEarnedRight: String? {
        get {
            return duelViewModel?.dataDriversRight.pointsEarned
        }
    }
    var winsRight: String? {
        get {
            return duelViewModel?.dataDriversRight.wins
        }
    }
    
    override func loadView() {
        self.view = duelScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        duelScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        duelScreen?.driversFirstNameLeft.text = nameDriverLeft
        duelScreen?.driversLastNameLeft.text = lastNameDriverLeft
        duelScreen?.driversFirstNameRight.text = nameDriverRight
        duelScreen?.driversLastNameRight.text = lastNameDriverRight
        view.addSubview(backButton)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    lazy var backButton: UIButton = {
        let button: UIButton = duelScreen?.backButtonNavigation ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        return button
    }()
    
    @objc func backScreen() {
        navigationController?.popViewController(animated: true)
    }
}

extension DuelViewController: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == duelScreen?.tableInfoLeft {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthDateCustomTableViewCell.identifier) as? DuelBirthDateCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.birthDateAnswer.text = birthDateLeft
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthLocationCustomTableViewCell.identifier) as? DuelBirthLocationCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.birthLocationAnswer.text = birthLocationLeft
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelChampionshipsWonCustomTableViewCell.identifier) as? DuelChampionshipsWonCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.championshipsWinAnswer.text = championshipsWonLeft
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelRacesParticipatedCustomTableViewCell.identifier) as? DuelRacesParticipatedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.racesAnswer.text = racesParticipatedLeft
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPodiumsEarnedCustomTableViewCell.identifier) as? DuelPodiumsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.podiumsAnswer.text = podiumsEarnedLeft
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 5 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPointsEarnedCustomTableViewCell.identifier) as? DuelPointsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.pointsAnswer.text = pointsEarnedLeft
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelWinsCustomTableViewCell.identifier) as? DuelWinsCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.winsAnswer.text = winsLeft
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            }
        } else {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthDateCustomTableViewCell.identifier) as? DuelBirthDateCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.birthDateAnswer.text = birthDateRight
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthLocationCustomTableViewCell.identifier) as? DuelBirthLocationCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.birthLocationAnswer.text = birthLocationRight
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelChampionshipsWonCustomTableViewCell.identifier) as? DuelChampionshipsWonCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.championshipsWinAnswer.text = championshipsWonRight
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelRacesParticipatedCustomTableViewCell.identifier) as? DuelRacesParticipatedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.racesAnswer.text = racesParticipatedRight
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPodiumsEarnedCustomTableViewCell.identifier) as? DuelPodiumsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.podiumsAnswer.text = podiumsEarnedRight
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 5 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPointsEarnedCustomTableViewCell.identifier) as? DuelPointsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.pointsAnswer.text = pointsEarnedRight
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelWinsCustomTableViewCell.identifier) as? DuelWinsCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.winsAnswer.text = winsRight
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            }
        }

    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
}
