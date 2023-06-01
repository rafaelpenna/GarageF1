//
//  DriversDetailViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import Foundation
import UIKit

enum DriversInfoTableViewSection: Int {
    case birthDate
    case birthLocation
    case championshipsWin
    case races
    case podiums
    case points
    case bestRacePosition
    case bestGridPosition
}

class DriversDetailViewController: UIViewController {
    
    let driversDetailScreen: DriversDetailScreenView? = DriversDetailScreenView()
    let drivertsViewModel: DriversViewModel = DriversViewModel()
    
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
        switch DriversInfoTableViewSection(rawValue: indexPath.row){
        case .birthDate:
            let cell = tableView.dequeueReusableCell(withIdentifier: BirthDateCustomTableViewCellScreen.identifier) as? BirthDateCustomTableViewCellScreen
            cell?.configure()
            cell?.birthDateAnswerLabel.text = birthDate
            cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
            return cell ?? UITableViewCell()
        case .birthLocation:
            let cell = tableView.dequeueReusableCell(withIdentifier: BirthLocationCustomTableViewCellScreen.identifier) as? BirthLocationCustomTableViewCellScreen
            cell?.configure()
            cell?.birthLocationAnswerLabel.text = birthLocation
            cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
            return cell ?? UITableViewCell()
        case .championshipsWin:
            let cell = tableView.dequeueReusableCell(withIdentifier: ChampionshipsWinCustomTableViewCellScreen.identifier) as? ChampionshipsWinCustomTableViewCellScreen
            cell?.configure()
            cell?.championshipsWinAnswerLabel.text = championshipsWon
            cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
            return cell ?? UITableViewCell()
        case .races:
            let cell = tableView.dequeueReusableCell(withIdentifier: RacesCustomTableViewCellScreen.identifier) as? RacesCustomTableViewCellScreen
            cell?.configure()
            cell?.racesAnswerLabel.text = racesParticipated
            cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
            return cell ?? UITableViewCell()
        case .podiums:
            let cell = tableView.dequeueReusableCell(withIdentifier: PodiumsCustomTableViewCellScreen.identifier) as? PodiumsCustomTableViewCellScreen
            cell?.configure()
            cell?.podiumsAnswerLabel.text = podiumsEarned
            cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
            return cell ?? UITableViewCell()
        case .points:
            let cell = tableView.dequeueReusableCell(withIdentifier: PointsCustomTableViewCellScreen.identifier) as? PointsCustomTableViewCellScreen
            cell?.configure()
            cell?.pointsAnswerLabel.text = pointsEarned
            cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
            return cell ?? UITableViewCell()
        case .bestRacePosition:
            let cell = tableView.dequeueReusableCell(withIdentifier: BestRacePositionCustomTableViewCellScreen.identifier) as? BestRacePositionCustomTableViewCellScreen
            cell?.configure()
            cell?.bestRacePositionAnswerLabel.text = bestPositionRaces
            cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
            return cell ?? UITableViewCell()
        case .bestGridPosition:
            let cell = tableView.dequeueReusableCell(withIdentifier: BestGridPositionCustomTableViewCellScreen.identifier) as? BestGridPositionCustomTableViewCellScreen
            cell?.configure()
            cell?.bestGridPositionAnswerLabel.text = bestGridPosition
            cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
            return cell ?? UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
}
