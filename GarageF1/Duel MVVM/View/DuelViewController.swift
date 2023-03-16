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
    
    override func loadView() {
        view = duelScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        duelScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
        duelScreen?.driversFirstNameLeft.text = duelViewModel?.getDriversNameLeft()
        duelScreen?.driversLastNameLeft.text = duelViewModel?.getDriversLastNameLeft()
        duelScreen?.driversFirstNameRight.text = duelViewModel?.getDriversNameRight()
        duelScreen?.driversLastNameRight.text = duelViewModel?.getDriversLastNameRight()
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
                cell?.birthDateAnswer.text = duelViewModel?.getDriversBirthDateLeft()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthLocationCustomTableViewCell.identifier) as? DuelBirthLocationCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.birthLocationAnswer.text = duelViewModel?.getDriversBirthPlaceLeft()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelChampionshipsWonCustomTableViewCell.identifier) as? DuelChampionshipsWonCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.championshipsWinAnswer.text = duelViewModel?.getChampionshipsWonLeft()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelRacesParticipatedCustomTableViewCell.identifier) as? DuelRacesParticipatedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.racesAnswer.text = duelViewModel?.getRacesParticipatedLeft()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPodiumsEarnedCustomTableViewCell.identifier) as? DuelPodiumsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.podiumsAnswer.text = duelViewModel?.getPodiumsWonLeft()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 5 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPointsEarnedCustomTableViewCell.identifier) as? DuelPointsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.pointsAnswer.text = duelViewModel?.getPointsEarnedLeft()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelWinsCustomTableViewCell.identifier) as? DuelWinsCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.winsAnswer.text = duelViewModel?.getWinsLeft()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            }
        } else {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthDateCustomTableViewCell.identifier) as? DuelBirthDateCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.birthDateAnswer.text = duelViewModel?.getDriversBirthDateRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelBirthLocationCustomTableViewCell.identifier) as? DuelBirthLocationCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.birthLocationAnswer.text = duelViewModel?.getDriversBirthPlaceRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelChampionshipsWonCustomTableViewCell.identifier) as? DuelChampionshipsWonCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.championshipsWinAnswer.text = duelViewModel?.getChampionshipsWonRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 3 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelRacesParticipatedCustomTableViewCell.identifier) as? DuelRacesParticipatedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.racesAnswer.text = duelViewModel?.getRacesParticipatedRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 4 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPodiumsEarnedCustomTableViewCell.identifier) as? DuelPodiumsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.podiumsAnswer.text = duelViewModel?.getPodiumsWonRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else if indexPath.row == 5 {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelPointsEarnedCustomTableViewCell.identifier) as? DuelPointsEarnedCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.pointsAnswer.text = duelViewModel?.getPointsEarnedRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            } else {
                let cell = tableView.dequeueReusableCell(withIdentifier: DuelWinsCustomTableViewCell.identifier) as? DuelWinsCustomTableViewCell
                cell?.configure()
                let backgroundView = UIView()
                cell?.winsAnswer.text = duelViewModel?.getWinsRight()
                backgroundView.backgroundColor = .none
                cell?.selectedBackgroundView = backgroundView
                return cell ?? UITableViewCell()
            }
        }

    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
