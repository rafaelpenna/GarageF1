//
//  DriversDetailScreenView.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import UIKit

class DriversDetailScreenView: UIView {
    
    let driversDetailViewController: DriversViewController = DriversViewController()

    lazy var backgroundTopView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleToFill
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
    
    lazy var permanentNumberLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    lazy var driverPhotoImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    lazy var countryFlagImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor.darkGray.cgColor
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var infoDriversTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.layer.cornerRadius = 10
        tableView.backgroundColor = .none
        tableView.register(InfoDriversCustomTableViewCellScreen.self, forCellReuseIdentifier: InfoDriversCustomTableViewCellScreen.identifier)
        return tableView
    }()
    
    lazy var backgroundView: UIView = {
       let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        background.backgroundColor = .none
        background.contentMode = .bottomRight
        return background
    }()
    
    lazy var constructorLogoImageView: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        constraintsScreen()
        backgroundColor()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(backgroundTopView)
        addSubview(backButton)
        addSubview(firstNameLabel)
        addSubview(lastNameLabel)
        addSubview(driverPhotoImage)
        addSubview(permanentNumberLabel)
        addSubview(constructorLogoImageView)
        backgroundTopView.addSubview(countryFlagImageView)
        addSubview(infoDriversTableView)
    }
    
    public func setupTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource){
        infoDriversTableView.delegate = delegate
        infoDriversTableView.dataSource = dataSource
    }
    
    private func backgroundColor() {
        backgroundColor = UIColor(red: 66/255, green: 66/255, blue: 66/255, alpha: 1)
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
            
            backgroundTopView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopView.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopView.bottomAnchor.constraint(equalTo: centerYAnchor, constant: 100),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            firstNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            firstNameLabel.bottomAnchor.constraint(equalTo: backgroundTopView.bottomAnchor, constant: -45),
            
            lastNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            lastNameLabel.bottomAnchor.constraint(equalTo: backgroundTopView.bottomAnchor, constant: -20),
            
            countryFlagImageView.centerYAnchor.constraint(equalTo: firstNameLabel.bottomAnchor),
            countryFlagImageView.leadingAnchor.constraint(equalTo: lastNameLabel.trailingAnchor, constant: 30),
            countryFlagImageView.heightAnchor.constraint(equalToConstant: 40),
            countryFlagImageView.widthAnchor.constraint(equalToConstant: 55),
            
            permanentNumberLabel.topAnchor.constraint(equalTo: driverPhotoImage.topAnchor, constant: -25),
            permanentNumberLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            driverPhotoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            driverPhotoImage.bottomAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: -15),
            driverPhotoImage.heightAnchor.constraint(equalToConstant: 300),
            driverPhotoImage.widthAnchor.constraint(equalToConstant: 300),
            
            constructorLogoImageView.centerYAnchor.constraint(equalTo: permanentNumberLabel.centerYAnchor),
            constructorLogoImageView.heightAnchor.constraint(equalToConstant: 100),
            constructorLogoImageView.widthAnchor.constraint(equalToConstant: 160),
            constructorLogoImageView.centerXAnchor.constraint(equalTo: driverPhotoImage.leadingAnchor, constant: 25),
            
            infoDriversTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            infoDriversTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            infoDriversTableView.topAnchor.constraint(equalTo: backgroundTopView.bottomAnchor, constant: 15),
            infoDriversTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}

