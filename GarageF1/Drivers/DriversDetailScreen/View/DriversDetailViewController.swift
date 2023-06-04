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
    let driversViewController: DriversViewController = DriversViewController()
    let driversViewModel: DriversViewModel = DriversViewModel()
    
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
        self.view.addSubview(topView)
        self.view.addSubview(topBackgorundView)
        self.view.addSubview(backButton)
        self.view.addSubview(givenName)
        self.view.addSubview(familyName)
        self.view.addSubview(imageDriver)
        
    }
    
    lazy var topBackgorundView: UIView = {
        let view: UIView = driversDetailScreen?.backgroundTopRedView ?? UIView()
        view.backgroundColor = driverBackgroundColor
        return view
    }()
    
    lazy var topView: UIView = {
        let view: UIView = driversDetailScreen?.topRedView ?? UIView()
        view.backgroundColor = driverBackgroundColor
        return view
    }()
    
    lazy var backButton: UIButton = {
        let button: UIButton = driversDetailScreen?.backButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        return button
    }()
    
    lazy var givenName: UILabel = {
        let label: UILabel = driversDetailScreen?.firstNameLabel ?? UILabel()
        return label
    }()
    
    lazy var familyName: UILabel = {
        let label: UILabel = driversDetailScreen?.lastNameLabel ?? UILabel()
        return label
    }()
    
    lazy var imageDriver: UIImageView = {
        let image: UIImageView = driversDetailScreen?.driverPhotoImage ?? UIImageView()
        return image
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


extension DriversDetailViewController {
    
    var driverBackgroundColor: UIColor {
        if  lastNameDriver == "Verstappen" {
            return UIColor(red: 47/255, green: 48/255, blue: 60/255, alpha: 1)
            } else if lastNameDriver == "Pérez" {
                return UIColor(red: 47/255, green: 48/255, blue: 60/255, alpha: 1)
            } else if lastNameDriver == "Stroll" {
                return UIColor(red: 1/255, green: 97/255, blue: 118/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Sainz" {
                return UIColor(red: 161/255, green: 2/255, blue: 9/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Russell" {
                return UIColor(red: 12/255, green: 12/255, blue: 12/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Hamilton" {
                return UIColor(red: 12/255, green: 12/255, blue: 12/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Alonso" {
                return UIColor(red: 1/255, green: 97/255, blue: 118/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Ocon" {
                return UIColor(red: 127/255, green: 59/255, blue: 82/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Gasly" {
                return UIColor(red: 127/255, green: 59/255, blue: 82/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Norris" {
                return UIColor(red: 214/255, green: 68/255, blue: 7/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
                return UIColor(red: 82/255, green: 82/255, blue: 85/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Piastri" {
                return UIColor(red: 214/255, green: 68/255, blue: 7/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Bottas" {
                return UIColor(red: 111/255, green: 8/255, blue: 22/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Zhou" {
                return UIColor(red: 111/255, green: 8/255, blue: 22/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Tsunoda" {
                return UIColor(red: 27/255, green: 40/255, blue: 58/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Magnussen" {
                return UIColor(red: 82/255, green: 82/255, blue: 85/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Albon" {
                return UIColor(red: 1/255, green: 45/255, blue: 147/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "de Vries" {
                return UIColor(red: 27/255, green: 40/255, blue: 58/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Sargeant" {
                return UIColor(red: 1/255, green: 45/255, blue: 147/255, alpha: 1)
            } else if driversDetailScreen?.lastNameLabel.text == "Leclerc" {
                return UIColor(red: 161/255, green: 2/255, blue: 9/255, alpha: 1)
            }
        return .red
        }
    }
