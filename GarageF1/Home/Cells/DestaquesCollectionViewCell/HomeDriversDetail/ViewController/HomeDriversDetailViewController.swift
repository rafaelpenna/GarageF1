//
//  HomeDriversDetailViewController.swift
//  GarageF1
//
//  Created by Ellington Cavalcante on 01/07/23.
//

import Foundation
import UIKit

class HomeDriversDetailViewController: UIViewController {
    
    var homeDriversDetailScreen: HomeDriversDetailScreen?
    let driversViewController: DriversViewController = DriversViewController()
    let driversViewModel: DriversViewModel = DriversViewModel()
    var data: DriverStandingHomeModel
    
    required init(data: DriverStandingHomeModel) {
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        homeDriversDetailScreen = HomeDriversDetailScreen()
        self.view = homeDriversDetailScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passingHeaderData()
        addElements()
        configProtocols()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func configProtocols() {
        homeDriversDetailScreen?.setupTableViewProtocols(delegate: self, dataSource: self)
    }
    
    private func passingHeaderData() {
        homeDriversDetailScreen?.firstNameLabel.text = data.driver?.givenName ?? ""
        homeDriversDetailScreen?.lastNameLabel.text = data.driver?.familyName ?? ""
        homeDriversDetailScreen?.permanentNumber.text = data.driver?.permanentNumber ?? ""
    }
    
    private func addElements() {
        self.view.addSubview(topBackgorundView)
        self.view.addSubview(backButton)
        self.view.addSubview(givenName)
        self.view.addSubview(familyName)
        self.view.addSubview(permanentDriverNumber)
        self.view.addSubview(driverImageView)
        self.view.addSubview(constructorImage)
        self.view.addSubview(flagNationality)
    }
    
    lazy var topBackgorundView: UIView = {
        let view: UIView = homeDriversDetailScreen?.backgroundTopRedView ?? UIView()
        view.backgroundColor = UIColor(patternImage: UIImage(named: "\(homeDriverBackgroundImage)") ?? UIImage())
        view.contentMode = .scaleToFill
        return view
    }()
    
    lazy var backButton: UIButton = {
        let button: UIButton = homeDriversDetailScreen?.backButton ?? UIButton()
        button.isSelected = true
        button.addTarget(self, action: #selector(backScreen), for: .touchUpInside)
        return button
    }()
    
    lazy var givenName: UILabel = {
        let label: UILabel = homeDriversDetailScreen?.firstNameLabel ?? UILabel()
        return label
    }()
    
    lazy var familyName: UILabel = {
        let label: UILabel = homeDriversDetailScreen?.lastNameLabel ?? UILabel()
        return label
    }()
    
    lazy var driverImageView: UIImageView = {
        let image: UIImageView = homeDriversDetailScreen?.driverPhotoImage ?? UIImageView()
        image.image = driverPhoto
        return image
    }()
    
    lazy var constructorImage: UIImageView = {
        let image: UIImageView = homeDriversDetailScreen?.constructorLogo ?? UIImageView()
        image.image = homeDriverContructorLogo
        return image
    }()
    
    lazy var flagNationality: UIImageView = {
        let image: UIImageView = homeDriversDetailScreen?.countryFlag ?? UIImageView()
        image.image = homeDriverFlagNationality
        return image
    }()
    
    lazy var permanentDriverNumber: UILabel = {
        let label: UILabel = homeDriversDetailScreen?.permanentNumber ?? UILabel()
        return label
    }()
    
    @objc func backScreen() {
        navigationController?.popViewController(animated: true)
    }
}

extension HomeDriversDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeInfoDriversCustomTableViewCellScreen.identifier) as? HomeInfoDriversCustomTableViewCellScreen
        cell?.configure()
        cell?.answerPositionLabel.text = data.position ?? ""
        cell?.answerCodeLabel.text = data.driver?.code ?? ""
        cell?.answerPointsLabel.text = data.points ?? ""
        cell?.answerNumberWinsLabel.text = data.wins ?? ""
        cell?.selectedBackgroundView = homeDriversDetailScreen?.backgroundView
        return cell ?? UITableViewCell()
    }
}

extension HomeDriversDetailViewController {
    var homeDriverFlagNationality: UIImage {
        if  homeDriversDetailScreen?.lastNameLabel.text == "Verstappen" {
            return UIImage(named: "netherland") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Pérez" {
            return UIImage(named: "mexico") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Stroll" {
            return UIImage(named: "canada") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Sainz" {
            return UIImage(named: "spain") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Russell" {
            return UIImage(named: "uk") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Hamilton" {
            return UIImage(named: "uk") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Alonso" {
            return UIImage(named: "spain") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Ocon" {
            return UIImage(named: "france") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Gasly" {
            return UIImage(named: "france") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Norris" {
            return UIImage(named: "uk") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
            return UIImage(named: "germany") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Piastri" {
            return UIImage(named: "australia") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Bottas" {
            return UIImage(named: "finland") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Zhou" {
            return UIImage(named: "china") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Tsunoda" {
            return UIImage(named: "mexico") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Magnussen" {
            return UIImage(named: "denmark") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Albon" {
            return UIImage(named: "thailand") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "de Vries" {
            return UIImage(named: "netherland") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Sargeant" {
            return UIImage(named: "us") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Leclerc" {
            return UIImage(named: "monaco") ?? UIImage()
        }
        return UIImage()
    }
    
    var homeDriverContructorLogo: UIImage {
        if homeDriversDetailScreen?.lastNameLabel.text == "Verstappen" {
            return UIImage(named: "redbullLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Pérez" {
            return UIImage(named: "redbullLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Stroll" {
            return UIImage(named: "astonmartinLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Sainz" {
            return UIImage(named: "ferrariLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Russell" {
            return UIImage(named: "mercedesLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Hamilton" {
            return UIImage(named: "mercedesLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Alonso" {
            return UIImage(named: "astonmartinLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Ocon" {
            return UIImage(named: "alpineLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Gasly" {
            return UIImage(named: "alpineLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Norris" {
            return UIImage(named: "Mclaren") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
            return UIImage(named: "haasLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Piastri" {
            return UIImage(named: "Mclaren") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Bottas" {
            return UIImage(named: "AlphaRomeo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Zhou" {
            return UIImage(named: "AlphaRomeo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Tsunoda" {
            return UIImage(named: "AlphaTauri") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Magnussen" {
            return UIImage(named: "haasLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Albon" {
            return UIImage(named: "williamsLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "de Vries" {
            return UIImage(named: "AlphaTauri") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Sargeant" {
            return UIImage(named: "williamsLogo") ?? UIImage()
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Leclerc" {
            return UIImage(named: "ferrariLogo") ?? UIImage()
        }
        return UIImage()
    }
    
    var homeDriverBackgroundImage: String {
        if  homeDriversDetailScreen?.lastNameLabel.text == "Verstappen" {
            return "redbullbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Pérez" {
            return "redbullbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Stroll" {
            return "astonmartinbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Sainz" {
            return "ferraribackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Russell" {
            return "mercedesbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Hamilton" {
            return "mercedesbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Alonso" {
            return "astonmartinbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Ocon" {
            return "alpinebackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Gasly" {
            return "alpinebackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Norris" {
            return "mclarenbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
            return "haasbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Piastri" {
            return "mclarenbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Bottas" {
            return "alfaromeobackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Zhou" {
            return "alfaromeobackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Tsunoda" {
            return "alphatauribackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Magnussen" {
            return "haasbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Albon" {
            return "williamsbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "de Vries" {
            return "alphatauribackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Sargeant" {
            return "williamsbackground"
        } else if homeDriversDetailScreen?.lastNameLabel.text == "Leclerc" {
            return "ferraribackground"
        }
        return String()
    }
    
    var driverPhoto: UIImage {
        if  homeDriversDetailScreen?.lastNameLabel.text == "Verstappen" {
            return UIImage(named: "max") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Pérez" {
                return UIImage(named: "sergio") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Stroll" {
                return UIImage(named: "lance") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Sainz" {
                return UIImage(named: "carlos") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Russell" {
                return UIImage(named: "george") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Hamilton" {
                return UIImage(named: "lewis") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Alonso" {
                return UIImage(named: "fernando") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Ocon" {
                return UIImage(named: "esteban") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Gasly" {
                return UIImage(named: "pierre") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Norris" {
                return UIImage(named: "lando") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
                return UIImage(named: "nico") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Piastri" {
                return UIImage(named: "oscar") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Bottas" {
                return UIImage(named: "valteri") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Zhou" {
                return UIImage(named: "guanyu") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Tsunoda" {
                return UIImage(named: "yuki") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Magnussen" {
                return UIImage(named: "kevin") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Albon" {
                return UIImage(named: "alexander") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "de Vries" {
                return UIImage(named: "nyck") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Sargeant" {
                return UIImage(named: "logan") ?? UIImage()
            } else if homeDriversDetailScreen?.lastNameLabel.text == "Leclerc" {
                return UIImage(named: "charles") ?? UIImage()
            }
        return UIImage()
    }
}

