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
    let driversViewModel: HomeDriversDetailViewModel = HomeDriversDetailViewModel()
    
    var data: DriverStandingDriversModel
    
    required init(data: DriverStandingDriversModel) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        driversDetailScreen?.firstNameLabel.text = data.driver.givenName
        driversDetailScreen?.lastNameLabel.text = data.driver.familyName
        driversDetailScreen?.permanentNumberLabel.text = data.driver.permanentNumber
    }
    
    private func addElements() {
        self.view.addSubview(topBackgorundView)
        self.view.addSubview(backButton)
        self.view.addSubview(givenNameLabel)
        self.view.addSubview(familyNameLabel)
        self.view.addSubview(permanentDriverNumberLabel)
        self.view.addSubview(driverImageView)
        self.view.addSubview(constructorImageView)
        self.view.addSubview(flagNationalityImageView)
    }
    
    lazy var topBackgorundView: UIView = {
        let view: UIView = driversDetailScreen?.backgroundTopView ?? UIView()
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
    
    lazy var givenNameLabel: UILabel = {
        let label: UILabel = driversDetailScreen?.firstNameLabel ?? UILabel()
        return label
    }()
    
    lazy var familyNameLabel: UILabel = {
        let label: UILabel = driversDetailScreen?.lastNameLabel ?? UILabel()
        return label
    }()
    
    lazy var driverImageView: UIImageView = {
        let image: UIImageView = driversDetailScreen?.driverPhotoImage ?? UIImageView()
        image.image = driverPhoto
        return image
    }()
    
    lazy var constructorImageView: UIImageView = {
        let image: UIImageView = driversDetailScreen?.constructorLogoImageView ?? UIImageView()
        image.image = driverContructorLogoImage
        return image
    }()
    
    lazy var flagNationalityImageView: UIImageView = {
        let image: UIImageView = driversDetailScreen?.countryFlagImageView ?? UIImageView()
        image.image = driverFlagNationalityImage
        return image
    }()
    
    lazy var permanentDriverNumberLabel: UILabel = {
        let label: UILabel = driversDetailScreen?.permanentNumberLabel ?? UILabel()
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
        cell?.answerPositionLabel.text = data.position
        cell?.answerCodeLabel.text = data.driver.code
        cell?.answerPointsLabel.text = data.points
        cell?.answerNumberWinsLabel.text = data.wins
        cell?.selectedBackgroundView = driversDetailScreen?.backgroundView
        return cell ?? UITableViewCell()
    }
}

extension DriversDetailViewController {
    
    var driverFlagNationalityImage: UIImage {
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
                return UIImage(named: "japan") ?? UIImage()
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
    
    var driverContructorLogoImage: UIImage {
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
    
    var driverPhoto: UIImage {
        if  driversDetailScreen?.lastNameLabel.text == "Verstappen" {
            return UIImage(named: "max") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Pérez" {
                return UIImage(named: "sergio") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Stroll" {
                return UIImage(named: "lance") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Sainz" {
                return UIImage(named: "carlos") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Russell" {
                return UIImage(named: "george") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Hamilton" {
                return UIImage(named: "lewis") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Alonso" {
                return UIImage(named: "fernando") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Ocon" {
                return UIImage(named: "esteban") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Gasly" {
                return UIImage(named: "pierre") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Norris" {
                return UIImage(named: "lando") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
                return UIImage(named: "nico") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Piastri" {
                return UIImage(named: "oscar") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Bottas" {
                return UIImage(named: "valteri") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Zhou" {
                return UIImage(named: "guanyu") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Tsunoda" {
                return UIImage(named: "yuki") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Magnussen" {
                return UIImage(named: "kevin") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Albon" {
                return UIImage(named: "alexander") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "de Vries" {
                return UIImage(named: "nyck") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Sargeant" {
                return UIImage(named: "logan") ?? UIImage()
            } else if driversDetailScreen?.lastNameLabel.text == "Leclerc" {
                return UIImage(named: "charles") ?? UIImage()
            }
        return UIImage()
    }
}
