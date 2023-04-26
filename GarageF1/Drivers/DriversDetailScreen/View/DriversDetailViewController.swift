//
//  DriversDetailViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import Foundation
import UIKit

class DriversDetailViewController: UIViewController {
    
    let driversDetailScreen: DriversDetailScreenView? = DriversDetailScreenView()
    
    var nameDriver = ""
    var lastNameDriver = ""
    var driverPhoto = UIImage()
    var birthDate = ""
    var birthLocation = ""
    var championshipsWon = ""
    var racesParticipated = ""
    var podiumsEarned = ""
    var pointsEarned = ""
    var bestPositionRaces = ""
    var bestGridPosition = ""
    
    override func loadView() {
        self.view = driversDetailScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProtocols()
        passingHeaderData()
        addElements()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func setupProtocols() {
        driversDetailScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
    }
    
    private func passingHeaderData() {
        driversDetailScreen?.firstNameLabel.text = nameDriver
        driversDetailScreen?.lastNameLabel.text = lastNameDriver
        driversDetailScreen?.driverPhotoImage.image = driverPhoto
    }
    
    private func addElements() {
        self.view.addSubview(backButton)
    }
    
    lazy var backButton: UIButton = {
        let button: UIButton = driversDetailScreen?.backButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        return button
    }()

    @objc func backScreen() {
        navigationController?.popViewController(animated: true)
    }
    
}

extension DriversDetailViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: BirthDateCustomTableViewCellScreen.identifier) as? BirthDateCustomTableViewCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.birthDateAnswerLabel.text = birthDate
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: BirthLocationCustomTableViewCellScreen.identifier) as? BirthLocationCustomTableViewCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.birthLocationAnswerLabel.text = birthLocation
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ChampionshipsWinCustomTableViewCellScreen.identifier) as? ChampionshipsWinCustomTableViewCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.championshipsWinAnswerLabel.text = championshipsWon
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: RacesCustomTableViewCellScreen.identifier) as? RacesCustomTableViewCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.racesAnswerLabel.text = racesParticipated
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 4 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PodiumsCustomTableViewCellScreen.identifier) as? PodiumsCustomTableViewCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.podiumsAnswerLabel.text = podiumsEarned
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: PointsCustomTableViewCellScreen.identifier) as? PointsCustomTableViewCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.pointsAnswerLabel.text = pointsEarned
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else if indexPath.row == 6 {
            let cell = tableView.dequeueReusableCell(withIdentifier: BestRacePositionCustomTableViewCellScreen.identifier) as? BestRacePositionCustomTableViewCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.bestRacePositionAnswerLabel.text = bestPositionRaces
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: BestGridPositionCustomTableViewCellScreen.identifier) as? BestGridPositionCustomTableViewCellScreen
            cell?.configure()
            let backgroundView = UIView()
            cell?.bestGridPositionAnswerLabel.text = bestGridPosition
            backgroundView.backgroundColor = .none
            cell?.selectedBackgroundView = backgroundView
            return cell ?? UITableViewCell()
        }

    }
}
