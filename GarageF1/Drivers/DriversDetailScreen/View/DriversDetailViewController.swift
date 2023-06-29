//
//  DriversDetailViewController.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import Foundation
import UIKit

class DriversDetailViewController: UIViewController {
    
    var driversDetailScreen: DriversDetailScreenView?
    let driversViewController: DriversViewController = DriversViewController()
    let driversViewModel: DriversViewModel = DriversViewModel()
    
    var nameDriver = ""
    var lastNameDriver = ""
    var driverPhoto = UIImage()
    var permanentNumber = ""
    var points = ""
    var code = ""
    var wins = ""
    var position = ""
    
    override func loadView() {
        driversDetailScreen = DriversDetailScreenView()
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
        driversDetailScreen?.permanentNumber.text = permanentNumber
    }
    
    private func addElements() {
        self.view.addSubview(topBackgorundView)
        self.view.addSubview(backButton)
        self.view.addSubview(givenName)
        self.view.addSubview(familyName)
        self.view.addSubview(permanentDriverNumber)
        self.view.addSubview(imageDriver)
        self.view.addSubview(constructorImage)
        self.view.addSubview(flagNationality)
    }
    
    lazy var topBackgorundView: UIView = {
        let view: UIView = driversDetailScreen?.backgroundTopRedView ?? UIView()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "\(driverBackgroundImage)") ?? UIImage())
        view.contentMode = .scaleToFill
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
    
    lazy var constructorImage: UIImageView = {
        let image: UIImageView = driversDetailScreen?.constructorLogo ?? UIImageView()
        image.image = driverContructorLogo
        return image
    }()
    
    lazy var flagNationality: UIImageView = {
        let image: UIImageView = driversDetailScreen?.countryFlag ?? UIImageView()
        image.image = driverFlagNationality
        return image
    }()
    
    lazy var permanentDriverNumber: UILabel = {
        let label: UILabel = driversDetailScreen?.permanentNumber ?? UILabel()
        return label
    }()
    
    @objc func backScreen() {
        navigationController?.popViewController(animated: true)
    }
}

extension DriversDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: InfoDriversCustomTableViewCellScreen.identifier) as? InfoDriversCustomTableViewCellScreen
        cell?.configure()
        cell?.answerPositionLabel.text = position
        cell?.answerCodeLabel.text = code
        cell?.answerPointsLabel.text = points
        cell?.answerNumberWinsLabel.text = wins
        cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
        return cell ?? UITableViewCell()
    }
}



extension DriversDetailViewController {
    
    var driverFlagNationality: UIImage {
        if  driversDetailScreen?.lastNameLabel.text == "Verstappen" {
            return UIImage(named: "netherland") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Pérez" {
            return UIImage(named: "mexico") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Stroll" {
            return UIImage(named: "canada") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Sainz" {
            return UIImage(named: "spain") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Russell" {
            return UIImage(named: "uk") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Hamilton" {
            return UIImage(named: "uk") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Alonso" {
            return UIImage(named: "spain") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Ocon" {
            return UIImage(named: "france") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Gasly" {
            return UIImage(named: "france") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Norris" {
            return UIImage(named: "uk") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
            return UIImage(named: "germany") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Piastri" {
            return UIImage(named: "australia") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Bottas" {
            return UIImage(named: "finland") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Zhou" {
            return UIImage(named: "china") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Tsunoda" {
            return UIImage(named: "mexico") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Magnussen" {
            return UIImage(named: "denmark") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Albon" {
            return UIImage(named: "thailand") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "de Vries" {
            return UIImage(named: "netherland") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Sargeant" {
            return UIImage(named: "us") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Leclerc" {
            return UIImage(named: "monaco") ?? UIImage()
        }
        return UIImage()
    }
    
    var driverContructorLogo: UIImage {
        if  driversDetailScreen?.lastNameLabel.text == "Verstappen" {
            return UIImage(named: "redbullLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Pérez" {
            return UIImage(named: "redbullLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Stroll" {
            return UIImage(named: "astonmartinLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Sainz" {
            return UIImage(named: "ferrariLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Russell" {
            return UIImage(named: "mercedesLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Hamilton" {
            return UIImage(named: "mercedesLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Alonso" {
            return UIImage(named: "astonmartinLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Ocon" {
            return UIImage(named: "alpineLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Gasly" {
            return UIImage(named: "alpineLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Norris" {
            return UIImage(named: "Mclaren") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
            return UIImage(named: "haasLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Piastri" {
            return UIImage(named: "Mclaren") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Bottas" {
            return UIImage(named: "AlphaRomeo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Zhou" {
            return UIImage(named: "AlphaRomeo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Tsunoda" {
            return UIImage(named: "AlphaTauri") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Magnussen" {
            return UIImage(named: "haasLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Albon" {
            return UIImage(named: "williamsLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "de Vries" {
            return UIImage(named: "AlphaTauri") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Sargeant" {
            return UIImage(named: "williamsLogo") ?? UIImage()
        } else if driversDetailScreen?.lastNameLabel.text == "Leclerc" {
            return UIImage(named: "ferrariLogo") ?? UIImage()
        }
        return UIImage()
    }
    
    var driverBackgroundImage: String {
        if  driversDetailScreen?.lastNameLabel.text == "Verstappen" {
            return "redbullbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Pérez" {
            return "redbullbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Stroll" {
            return "astonmartinbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Sainz" {
            return "ferraribackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Russell" {
            return "mercedesbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Hamilton" {
            return "mercedesbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Alonso" {
            return "astonmartinbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Ocon" {
            return "alpinebackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Gasly" {
            return "alpinebackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Norris" {
            return "mclarenbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
            return "haasbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Piastri" {
            return "mclarenbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Bottas" {
            return "alfaromeobackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Zhou" {
            return "alfaromeobackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Tsunoda" {
            return "alphatauribackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Magnussen" {
            return "haasbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Albon" {
            return "williamsbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "de Vries" {
            return "alphatauribackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Sargeant" {
            return "williamsbackground"
        } else if driversDetailScreen?.lastNameLabel.text == "Leclerc" {
            return "ferraribackground"
        }
        return String()
    }
}
