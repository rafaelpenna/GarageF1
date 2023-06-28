//
//  DriversDetailScreenView.swift
//  GarageF1
//
//  Created by Rafael Penna on 12/02/23.
//

import UIKit

class DriversDetailScreenView: UIView {
    
    let driversDetailViewController: DriversViewController = DriversViewController()

    lazy var backgroundTopRedView: UIView = {
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
    
    lazy var permanentNumber: UILabel = {
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
    
    lazy var countryFlag: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 0.5
        imageView.layer.borderColor = UIColor.darkGray.cgColor
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    lazy var countryFlag2: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        return label
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
    
    lazy var constructorLogo: UIImageView = {
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
        addSubview(backgroundTopRedView)
        addSubview(backButton)
        addSubview(firstNameLabel)
        addSubview(lastNameLabel)
        addSubview(driverPhotoImage)
        addSubview(permanentNumber)
        addSubview(constructorLogo)
        backgroundTopRedView.addSubview(countryFlag)
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
            
            backgroundTopRedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundTopRedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundTopRedView.topAnchor.constraint(equalTo: topAnchor),
            backgroundTopRedView.bottomAnchor.constraint(equalTo: centerYAnchor, constant: 100),
            
            backButton.topAnchor.constraint(equalTo: topAnchor, constant: 45),
            backButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 20),
            backButton.widthAnchor.constraint(equalToConstant: 15),
            
            firstNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            firstNameLabel.bottomAnchor.constraint(equalTo: backgroundTopRedView.bottomAnchor, constant: -45),
            
            lastNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            lastNameLabel.bottomAnchor.constraint(equalTo: backgroundTopRedView.bottomAnchor, constant: -20),
            
            countryFlag.centerYAnchor.constraint(equalTo: firstNameLabel.bottomAnchor),
            countryFlag.leadingAnchor.constraint(equalTo: lastNameLabel.trailingAnchor, constant: 30),
            countryFlag.heightAnchor.constraint(equalToConstant: 40),
            countryFlag.widthAnchor.constraint(equalToConstant: 55),
            
            permanentNumber.topAnchor.constraint(equalTo: driverPhotoImage.topAnchor, constant: -25),
            permanentNumber.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            driverPhotoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            driverPhotoImage.bottomAnchor.constraint(equalTo: firstNameLabel.bottomAnchor, constant: -15),
            driverPhotoImage.heightAnchor.constraint(equalToConstant: 300),
            driverPhotoImage.widthAnchor.constraint(equalToConstant: 300),
            
            constructorLogo.centerYAnchor.constraint(equalTo: permanentNumber.centerYAnchor),
            constructorLogo.heightAnchor.constraint(equalToConstant: 100),
            constructorLogo.widthAnchor.constraint(equalToConstant: 160),
            constructorLogo.centerXAnchor.constraint(equalTo: driverPhotoImage.leadingAnchor, constant: 25),
            
            infoDriversTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            infoDriversTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            infoDriversTableView.topAnchor.constraint(equalTo: backgroundTopRedView.bottomAnchor, constant: 15),
            infoDriversTableView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -25),
        ])
    }
}

