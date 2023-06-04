//
//  DriversDetailScreenView.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import UIKit

class DriversDetailScreenView: UIView {
    
    let driversDetailViewController: DriversViewController = DriversViewController()

    lazy var topRedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = driverBackgroundColor
        return view
    }()
    
    lazy var backgroundTopRedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
//        view.backgroundColor = driverBackgroundColor
        return view
    }()
    
    lazy var backButton: UIButton = {
       let backButton = UIButton()
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.setImage(UIImage(named: "backButton"), for: .normal)
        return backButton
    }()
    
    lazy var firstNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    lazy var lastNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 25)
        return label
    }()
    
    lazy var driverPhotoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var infoDriversTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 243/255, green: 243/255, blue: 243/255, alpha: 1)
        tableView.backgroundView = UIImageView(image: UIImage(named: "backgroundFlag"))
        tableView.register(BirthDateCustomTableViewCellScreen.self, forCellReuseIdentifier: BirthDateCustomTableViewCellScreen.identifier)
        tableView.register(BirthLocationCustomTableViewCellScreen.self, forCellReuseIdentifier: BirthLocationCustomTableViewCellScreen.identifier)
        tableView.register(ChampionshipsWinCustomTableViewCellScreen.self, forCellReuseIdentifier: ChampionshipsWinCustomTableViewCellScreen.identifier)
        tableView.register(RacesCustomTableViewCellScreen.self, forCellReuseIdentifier: RacesCustomTableViewCellScreen.identifier)
        tableView.register(PodiumsCustomTableViewCellScreen.self, forCellReuseIdentifier: PodiumsCustomTableViewCellScreen.identifier)
        tableView.register(PointsCustomTableViewCellScreen.self, forCellReuseIdentifier: PointsCustomTableViewCellScreen.identifier)
        tableView.register(BestRacePositionCustomTableViewCellScreen.self, forCellReuseIdentifier: BestRacePositionCustomTableViewCellScreen.identifier)
        tableView.register(BestGridPositionCustomTableViewCellScreen.self, forCellReuseIdentifier: BestGridPositionCustomTableViewCellScreen.identifier)
        return tableView
    }()
    
    lazy var backgroundView: UIView = {
       let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .none
        return background
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        constraintsScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(topRedView)
        addSubview(backgroundTopRedView)
        addSubview(backButton)
        addSubview(firstNameLabel)
        addSubview(lastNameLabel)
        addSubview(driverPhotoImage)
        addSubview(infoDriversTableView)
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        infoDriversTableView.delegate = delegate
        infoDriversTableView.dataSource = dataSource
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            topRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            topRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            topRedView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            topRedView.heightAnchor.constraint(equalToConstant: 135),
            
            backgroundTopRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopRedView.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopRedView.heightAnchor.constraint(equalToConstant: 80),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            
            firstNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            firstNameLabel.bottomAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: -40),
            
            lastNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            lastNameLabel.bottomAnchor.constraint(equalTo: topRedView.bottomAnchor, constant: -15),
            
            driverPhotoImage.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            driverPhotoImage.bottomAnchor.constraint(equalTo: topRedView.bottomAnchor),
            driverPhotoImage.heightAnchor.constraint(equalToConstant: 120),
            driverPhotoImage.widthAnchor.constraint(equalToConstant: 120),
            
            infoDriversTableView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            infoDriversTableView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            infoDriversTableView.topAnchor.constraint(equalTo: topRedView.bottomAnchor),
            infoDriversTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}

extension DriversDetailScreenView {
    var driverBackgroundColor: UIColor {
        if lastNameLabel.text == "Verstappen" {
                return UIColor(red: 47/255, green: 48/255, blue: 60/255, alpha: 1)
            } else if lastNameLabel.text == "Pérez" {
                return UIColor(red: 47/255, green: 48/255, blue: 60/255, alpha: 1)
            } else if lastNameLabel.text == "Stroll" {
                return UIColor(red: 1/255, green: 97/255, blue: 118/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Sainz" {
//                return UIColor(red: 161/255, green: 2/255, blue: 9/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Russell" {
//                return UIColor(red: 12/255, green: 12/255, blue: 12/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Hamilton" {
//                return UIColor(red: 12/255, green: 12/255, blue: 12/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Alonso" {
//                return UIColor(red: 1/255, green: 97/255, blue: 118/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Ocon" {
//                return UIColor(red: 127/255, green: 59/255, blue: 82/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Gasly" {
//                return UIColor(red: 127/255, green: 59/255, blue: 82/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Norris" {
//                return UIColor(red: 214/255, green: 68/255, blue: 7/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Hülkenberg" {
//                return UIColor(red: 82/255, green: 82/255, blue: 85/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Piastri" {
//                return UIColor(red: 214/255, green: 68/255, blue: 7/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Bottas" {
//                return UIColor(red: 111/255, green: 8/255, blue: 22/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Zhou" {
//                return UIColor(red: 111/255, green: 8/255, blue: 22/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Tsunoda" {
//                return UIColor(red: 27/255, green: 40/255, blue: 58/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Magnussen" {
//                return UIColor(red: 82/255, green: 82/255, blue: 85/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Albon" {
//                return UIColor(red: 1/255, green: 45/255, blue: 147/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "de Vries" {
//                return UIColor(red: 27/255, green: 40/255, blue: 58/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Sargeant" {
//                return UIColor(red: 1/255, green: 45/255, blue: 147/255, alpha: 1)
//            } else if driversDetailScreen?.lastNameLabel.text == "Leclerc" {
//                return UIColor(red: 161/255, green: 2/255, blue: 9/255, alpha: 1)
            }
        return .red
        }
    }

